/**********************************
*
*
* Function Prototypes for sound functions
*
*
**********************************/

void muteSound(); // might not need
void unMuteSound(); // might not need
void stopSound();
void pauseSound();
void unPauseSound();

void setUpInterrupts();
void interruptHandler();

void setUpSounds();
void playSoundA(const unsigned char* sound, int length, int frequency);
void playSoundB(const unsigned char* sound, int length, int frequency);

//Sound structure
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
} SOUND;