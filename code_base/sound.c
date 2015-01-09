#include "myLib.h"
#include "sound.h"
/**********************************
*
*
* All of the sound functions in one c file
* for neatness of code.
*
*
**********************************/

SOUND soundA;
SOUND soundB;

int vbCountA = 0;
int vbCountB = 0;
int startA = 0;
int startB = 0;

void setUpSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                        DSA_OUTPUT_RATIO_100 | 
                        DSA_OUTPUT_TO_BOTH | 
                        DSA_TIMER0 | 
                        DSA_FIFO_RESET |
                        DSB_OUTPUT_RATIO_100 | 
                        DSB_OUTPUT_TO_BOTH |
                        DSB_TIMER1 | 
                        DSB_FIFO_RESET;
}

void pauseSound()
{
    REG_IME = 0;
    soundA.isPlaying = FALSE;
    soundB.isPlaying = FALSE;

    // dma[1].cnt = dma[1].cnt & (0<<31);
    // dma[2].cnt = dma[2].cnt & (0<<31);

    dma[1].cnt &= (0<<31);
    dma[2].cnt &= (0<<31);    
}

//NOT WORKING!!!
void unPauseSound()
{
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
    soundA.isPlaying = TRUE;
    soundB.isPlaying = TRUE;

    // dma[1].cnt = dma[1].cnt | (1<<31);
    // dma[2].cnt = dma[2].cnt | (1<<31);
    
    dma[1].cnt |= (1<<31);
    dma[2].cnt |= (1<<31);
}

void muteSound()
{
    REG_SOUNDCNT_H = 0;
}

void unMuteSound()
{
    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                    DSA_OUTPUT_RATIO_100 | 
                    DSA_OUTPUT_TO_BOTH | 
                    DSA_TIMER0 | 
                    DSA_FIFO_RESET |
                    DSB_OUTPUT_RATIO_100 | 
                    DSB_OUTPUT_TO_BOTH |
                    DSB_TIMER1 | 
                    DSB_FIFO_RESET;

}

void stopSound()
{
    REG_TM0CNT = 0;
    REG_DMA1CNT = 0;
    REG_TM1CNT = 0;
    REG_DMA2CNT = 0;
    soundA.isPlaying = FALSE;
    soundB.isPlaying = FALSE;
}

void playSoundA(const unsigned char* sound, int length, int frequency)
{
    soundA.data = sound;
    soundA.length = length;
    soundA.frequency = frequency;
    soundA.isPlaying = TRUE;
    soundA.loops = TRUE;
    soundA.duration = ((60*length/frequency) - ((length/frequency)*3)-1);
    soundA.priority = 10; //what does this line do again???

    dma[1].cnt = 0;
    vbCountA = 0;

    int interval = 16777216/frequency;

    DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM0CNT = 0;

    REG_TM0D = -interval;
    REG_TM0CNT = TIMER_ON;

}

void playSoundB(const unsigned char* sound, int length, int frequency) 
{

    soundB.data = sound;
    soundB.length = length;
    soundB.frequency = frequency;
    soundB.isPlaying = TRUE;
    soundB.loops = FALSE;
    soundB.duration = ((60*length)/frequency) - ((length/frequency)*3)-1;
    soundB.priority = 1;

    dma[2].cnt = 0;
    vbCountB = 0;

    int interval = 16777216/frequency;

    DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM1CNT = 0;
    
    REG_TM1D = -interval;
    REG_TM1CNT = TIMER_ON;    

}

void setUpInterrupts()
{
    REG_IME = 0;
    REG_INTERRUPT = (unsigned int) interruptHandler;
    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;

}

void interruptHandler()
{
    REG_IME = 0;
    if(REG_IF & INT_VBLANK)
    {

        if (soundA.isPlaying)
        {
            vbCountA++;

            if (soundA.isPlaying && (vbCountA - startA > soundA.duration)) 
            {
                if (soundA.loops)
                {
                    playSoundA(soundA.data, soundA.length, soundA.frequency);
                }
                else // stop sound
                {
                    REG_TM0CNT = 0;
                    REG_DMA1CNT = 0;
                    soundA.isPlaying = FALSE;
                }
            }
        }
            
        if (soundB.isPlaying)
        {
            vbCountB++;

            if (soundB.isPlaying && (vbCountB - startB > soundB.duration))
            {
                REG_TM1CNT = 0;
                REG_DMA2CNT = 0;
                soundB.isPlaying = FALSE;
                // shouldPlayB = FALSE; // This has no real purpose in a one time sound
            }
        
        }

    }

    REG_IF = INT_VBLANK; 
    REG_IME = 1;
}
