# 1 "backgrounds.c"
# 1 "<command-line>"
# 1 "backgrounds.c"
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
# 2 "backgrounds.c" 2
# 1 "backgrounds.h" 1



extern int sbbX;
extern int sbbY;

void loadBG();
void loadTheBackground(unsigned const short *palette, unsigned const short *sourceTiles, unsigned const short *sourceMap, int charBlock, int screenBlock, int tileLength);

void updateBG();
void loadBGTiles(unsigned const short *source, int charBlock, int tileLength);
void loadMapData(unsigned const short *source, int screenBlock, int BGSize);
void loadMapSection(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);
void reloadMap(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);
# 3 "backgrounds.c" 2
# 1 "bg0_grass.h" 1
# 22 "bg0_grass.h"
extern const unsigned short bg0_grassTiles[912];


extern const unsigned short bg0_grassMap[8192];


extern const unsigned short bg0_grassPal[256];
# 4 "backgrounds.c" 2
# 1 "bg1_edoTown.h" 1
# 22 "bg1_edoTown.h"
extern const unsigned short bg1_edoTownTiles[7568];


extern const unsigned short bg1_edoTownMap[8192];


extern const unsigned short bg1_edoTownPal[256];
# 5 "backgrounds.c" 2
# 1 "myLib.h" 1





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
# 6 "backgrounds.c" 2







int sbbX = 0;
int sbbY = 0;

int sbbWidth = 8;

void updateBG()
{
    char shouldReload = 0;
    if (bg2hOff < 0 && sbbX > 0)
    {
        sbbX -= 1;
        bg0hOff += 256;
        bg2hOff += 256;

        shouldReload = 1;
    }
    if (bg2hOff > 256 && sbbX < sbbWidth)
    {
        sbbX += 1;
        bg0hOff -= 256;
        bg2hOff -= 256;

        shouldReload = 1;
    }

    waitForVblank();

    if (shouldReload) reloadMap(bg1_edoTownMap, sbbX, sbbY, sbbWidth, 24);
    if (shouldReload) reloadMap(bg0_grassMap, sbbX, sbbY, sbbWidth, 28);
}

void loadBG()
{
 loadTheBackground(bg0_grassPal, bg0_grassTiles, bg0_grassMap, 0, 28, 1824);
 loadTheBackground(bg1_edoTownPal, bg1_edoTownTiles, bg1_edoTownMap, 2, 24, 15136);
}

void loadTheBackground(unsigned const short *palette, unsigned const short *sourceTiles, unsigned const short *sourceMap, int charBlock, int screenBlock, int tileLength)

{

    loadPalette(palette);


    loadBGTiles(sourceTiles, charBlock, tileLength);


    reloadMap(sourceMap, sbbX, sbbY, sbbWidth, screenBlock);

}

void loadBGTiles(unsigned const short *source, int charBlock, int tileLength)
{
    DMANow(3, source, &((charblock *)0x6000000)[charBlock], tileLength/2);
}

void loadMapData(unsigned const short *source, int screenBlock, int BGSize)
{
    int control = 0;
    switch(BGSize)
    {
        case 0:
            control = 1024;
            break;
        case 1:
            control = 1024*2;
            break;
        case 2:
            control = 1024*2;
            break;
        case 3:
            control = 1024*4;
            break;
    }

    DMANow(3, source, &((screenblock *)0x6000000)[screenBlock], control);
}

void loadMapSection(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock)
{
    int sbbMapCoordinate = ((sbbY)*(sbbWidth)+(sbbX)) * 1024;

    loadMapData(&source[sbbMapCoordinate], screenBlock, 0);
}

void reloadMap(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock)
{
    loadMapSection(source, sbbX, sbbY, sbbWidth, screenBlock);
    loadMapSection(source, sbbX+1, sbbY, sbbWidth, screenBlock+1);
    loadMapSection(source, sbbX, sbbY+1, sbbWidth, screenBlock+2);
    loadMapSection(source, sbbX+1, sbbY+1, sbbWidth, screenBlock+3);
}
