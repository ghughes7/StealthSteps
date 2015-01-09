# 1 "sound.c"
# 1 "<command-line>"
# 1 "sound.c"
# 1 "myLib.h" 1



# 1 "spriters.h" 1
# 19 "spriters.h"
typedef struct
{
    int x;
    int y;

} COORD;

typedef struct{
    int row;
    int col;
    int bigRow;
    int bigCol;
    int initRow;
    int initCol;
    int rightGawa;
    int bottomGawa;
    int rdel;
    int cdel;
    int active;
    int health;
    int recovering;
    int raging;
    int dead;
    int size;
    int width;
    int height;
    int aniCounter;
    int idleCounter;
    int aniState;
    int prevAniState;
    int currFrame;
    int hflip;
    int range;
    int direction;
    int moveCount;
    int reactionTime;

    int onScreen;
    int layer;
    int eNum;
    int lag;
    int isLight;


    COORD* origin;
} ENEMY;

typedef struct{
    int row;
    int col;
    int bigRow;
    int bigCol;


    int rightGawa;
    int bottomGawa;
    int rdel;
    int cdel;
    int width;
    int height;
    int health;
    int recovering;
    int dead;
    int speed;

    int direction;
    int aniCounter;
    int idleCounter;
    int aniState;
    int prevAniState;
    int currFrame;
    int hflip;
    int layer;
    int lag;
    int detectable;
    int stealthy;

} PLAYER;

typedef struct
{
 int row;
 int col;
    int bigRow;
    int bigCol;
 int width;
 int height;
 int aniCounter;
 int aniState;
 int prevAniState;
 int currFrame;
    int onScreen;
    int layer;
    int type;

} SCREEN_OBJ;

void initializeSprites();
void hideSprites();
void updatePlayer();
void endGame();
void playerStealthLogic();

void updateEnemies();
void updateOAM();
void buttonDataQuery();
void ghostControls(int button);
void playerAnimation();
void playerSpriteWork();

void enemyAI(ENEMY *gp);
void enemyAnimation(ENEMY *gp);
void enemySpriteWork(ENEMY *gp);
void spotLightMovement(ENEMY *lp);
void spotLightSpriteWork(ENEMY *lp);



void collisionWithEnemy(PLAYER* rp, ENEMY* ep);
void terminatePlayer(ENEMY* gp);
void mapCollisions(COORD* ryuCs[]);
void updatePlayerTracking(COORD* cp[]);
void updateEnemyTracking (COORD* cp[], ENEMY* ep);

void updateScreenObjs();
void screenObjAnimation(SCREEN_OBJ* sop);
void screenObjSpriteWork(SCREEN_OBJ* sop);


void drawPause();
void erasePause();
# 159 "spriters.h"
int bg2hOff, bg2vOff;
int bg0hOff;
int masterHoff, masterVoff;
# 5 "myLib.h" 2

typedef unsigned short u16;


void loadPalette(const unsigned short* palette);
int compare(const void* a, const void* b);
# 19 "myLib.h"
void updateEnemies();







void splash();
# 38 "myLib.h"
void spriteColorChange16(char subPalette, unsigned short targetColor);
void spriteColorRestore16(char subPalette, unsigned short const* originalPalette);
void spriteColorChange256(unsigned short targetColor);
void spriteColorRestore256(unsigned short const* originalPalette);
void backgroundFade(unsigned short targetColor);
void backgroundRestore(unsigned short const* originalPalette);

void waitForVblank();
void flipPage();
# 89 "myLib.h"
extern unsigned short *videoBuffer;

extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;
# 110 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 120 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control);
# 142 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;

extern DMA *dma;
# 268 "myLib.h"
typedef struct { u16 tileimg[8192]; } charblock;
typedef struct { u16 tilemap[1024]; } screenblock;
# 364 "myLib.h"
typedef struct{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
}OBJ_ATTR;






typedef struct {
    int row;
    int col;
} Sprite;
# 2 "sound.c" 2
# 1 "sound.h" 1
# 9 "sound.h"
void muteSound();
void unMuteSound();
void stopSound();
void pauseSound();
void unPauseSound();

void setUpInterrupts();
void interruptHandler();

void setUpSounds();
void playSoundA(const unsigned char* sound, int length, int frequency);
void playSoundB(const unsigned char* sound, int length, int frequency);


typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
} SOUND;
# 3 "sound.c" 2
# 12 "sound.c"
SOUND soundA;
SOUND soundB;

int vbCountA = 0;
int vbCountB = 0;
int startA = 0;
int startB = 0;

void setUpSounds()
{
    *(volatile u16 *)0x04000084 = (1<<7);

    *(volatile u16*)0x04000082 = (1<<1) |
                        (1<<2) |
                        (3<<8) |
                        0 |
                        (1<<11) |
                        (1<<3) |
                        (3<<12) |
                        (1<<14) |
                        (1<<15);
}

void pauseSound()
{
    *(unsigned short*)0x4000208 = 0;
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;




    dma[1].cnt &= (0<<31);
    dma[2].cnt &= (0<<31);
}


void unPauseSound()
{
    *(volatile unsigned short*)0x4000102 = (1<<7);
    *(volatile unsigned short*)0x4000106 = (1<<7);
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;




    dma[1].cnt |= (1<<31);
    dma[2].cnt |= (1<<31);
}

void muteSound()
{
    *(volatile u16*)0x04000082 = 0;
}

void unMuteSound()
{
    *(volatile u16*)0x04000082 = (1<<1) |
                    (1<<2) |
                    (3<<8) |
                    0 |
                    (1<<11) |
                    (1<<3) |
                    (3<<12) |
                    (1<<14) |
                    (1<<15);

}

void stopSound()
{
    *(volatile unsigned short*)0x4000102 = 0;
    (*(volatile int *) 0x40000C4) = 0;
    *(volatile unsigned short*)0x4000106 = 0;
    (*(volatile int *) 0x40000D0) = 0;
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
}

void playSoundA(const unsigned char* sound, int length, int frequency)
{
    soundA.data = sound;
    soundA.length = length;
    soundA.frequency = frequency;
    soundA.isPlaying = 1;
    soundA.loops = 1;
    soundA.duration = ((60*length/frequency) - ((length/frequency)*3)-1);
    soundA.priority = 10;

    dma[1].cnt = 0;
    vbCountA = 0;

    int interval = 16777216/frequency;

    DMANow(1, sound, (void *)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000102 = 0;

    *(volatile unsigned short*)0x4000100 = -interval;
    *(volatile unsigned short*)0x4000102 = (1<<7);

}

void playSoundB(const unsigned char* sound, int length, int frequency)
{

    soundB.data = sound;
    soundB.length = length;
    soundB.frequency = frequency;
    soundB.isPlaying = 1;
    soundB.loops = 0;
    soundB.duration = ((60*length)/frequency) - ((length/frequency)*3)-1;
    soundB.priority = 1;

    dma[2].cnt = 0;
    vbCountB = 0;

    int interval = 16777216/frequency;

    DMANow(2, sound, (void *)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000106 = 0;

    *(volatile unsigned short*)0x4000104 = -interval;
    *(volatile unsigned short*)0x4000106 = (1<<7);

}

void setUpInterrupts()
{
    *(unsigned short*)0x4000208 = 0;
    *(unsigned int*)0x3007FFC = (unsigned int) interruptHandler;
    *(unsigned short*)0x4000200 |= 1 << 0;
    *(unsigned short*)0x4000004 |= 1 << 3;
    *(unsigned short*)0x4000208 = 1;

}

void interruptHandler()
{
    *(unsigned short*)0x4000208 = 0;
    if(*(volatile unsigned short*)0x4000202 & 1 << 0)
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
                else
                {
                    *(volatile unsigned short*)0x4000102 = 0;
                    (*(volatile int *) 0x40000C4) = 0;
                    soundA.isPlaying = 0;
                }
            }
        }

        if (soundB.isPlaying)
        {
            vbCountB++;

            if (soundB.isPlaying && (vbCountB - startB > soundB.duration))
            {
                *(volatile unsigned short*)0x4000106 = 0;
                (*(volatile int *) 0x40000D0) = 0;
                soundB.isPlaying = 0;

            }

        }

    }

    *(volatile unsigned short*)0x4000202 = 1 << 0;
    *(unsigned short*)0x4000208 = 1;
}
