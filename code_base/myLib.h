#ifndef MY_LIB_H
#define MY_LIB_H

#include "spriters.h"

typedef unsigned short u16;
// Prototsypes

void loadPalette(const unsigned short* palette);
int compare(const void* a, const void* b);
// int manhattanDistance(COORD* point1, COORD* point2);
// void initialize();
// COORD* pointOnCircle(double radius, double angleInDegrees, COORD* origin);

// void shoot();
// void drawBullets();
// void updateBullets();

void updateEnemies();
/** Move over from main.h????***/
// void win();
// void lose();
// void pause();
// void instructions();


void splash();
// void drawBackgroundImage4();
// void enemyShoot(int enemy);

// void drawPlayer();
// void initialize();
// void drawEnemies();

// void delay();

//Palette manipulation
void spriteColorChange16(char subPalette, unsigned short targetColor);
void spriteColorRestore16(char subPalette, unsigned short const* originalPalette);
void spriteColorChange256(unsigned short targetColor);
void spriteColorRestore256(unsigned short const* originalPalette);
void backgroundFade(unsigned short targetColor);
void backgroundRestore(unsigned short const* originalPalette);

void waitForVblank();
void flipPage();

#define REG_DISPCTL *(unsigned short *)0x4000000
#define MODE0 0
// #define MODE3 3
// #define MODE4 4

// Backgrounds
#define BG0_ENABLE (1<<8)
#define BG1_ENABLE (1<<9)
#define BG2_ENABLE (1<<10)
#define BG3_ENABLE (1<<11)

//background control registers
#define REG_BG0CNT *(volatile unsigned short*)0x4000008
#define REG_BG1CNT *(volatile unsigned short*)0x400000A
#define REG_BG2CNT *(volatile unsigned short*)0x400000C
#define REG_BG3CNT *(volatile unsigned short*)0x400000E

#define PALETTE ((u16 *)0x5000000)

#define BACKBUFFER (1<<4)

#define SCANLINECOUNTER *(volatile u16 *)0x4000006


#define COLOR(r,g,b) ((r) | (g)<<5 | (b)<<10)
// #define RED COLOR(31,0,0)
#define GREEN COLOR(0,31,0)
// #define BLUE COLOR(0,0,31)
#define WHITE COLOR(31,31,31)
#define BLOODRED COLOR(4,2,2)
#define BLACK COLOR (0,0,0)

#define SCREENWIDTH 240
#define OFFSET(r,c,rowlen) ((r)*(rowlen)+(c))

#define WHITEINDEX 255
#define GREENINDEX 254
// #define BLACKINDEX 251
// #define REDINDEX 252
// #define BLUEINDEX 249

extern unsigned short *videoBuffer;

extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;

// *** Input =========================================================

// Buttons

#define BUTTON_A		(1<<0)
#define BUTTON_B		(1<<1)
#define BUTTON_SELECT	(1<<2)
#define BUTTON_START	(1<<3)
#define BUTTON_RIGHT	(1<<4)
#define BUTTON_LEFT		(1<<5)
#define BUTTON_UP		(1<<6)
#define BUTTON_DOWN		(1<<7)
#define BUTTON_R		(1<<8)
#define BUTTON_L		(1<<9)


extern unsigned int oldButtons;
extern unsigned int buttons;

#define BUTTONS *(volatile unsigned int *)0x04000130

#define BUTTON_HELD(key)  (~(BUTTONS) & (key))
#define BUTTON_PRESSED(key) (!(~(oldButtons)&(key)) && (~buttons & (key)))

// *** DMA =========================================================

void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control);

//DMA channel 0 register definitions
#define REG_DMA0SAD   (*(const volatile void * volatile *)0x40000B0)
#define REG_DMA0DAD   (*(volatile void * volatile *)0x40000B4)
#define REG_DMA0CNT   (*(volatile int *)  0x40000B8)

//DMA channel 1 register definitions
#define REG_DMA1SAD   (*(const volatile void * volatile *)0x40000BC)
#define REG_DMA1DAD   (*(volatile void * volatile *)0x40000C0)
#define REG_DMA1CNT   (*(volatile int *)  0x40000C4)

//DMA channel 2 register definitions
#define REG_DMA2SAD   (*(const volatile void * volatile *)0x40000C8)
#define REG_DMA2DAD   (*(volatile void * volatile *)0x40000CC)
#define REG_DMA2CNT   (*(volatile int *)  0x40000D0)

// DMA channel 3 register definitions
#define REG_DMA3SAD         *(volatile u32*)0x40000D4  // source address
#define REG_DMA3DAD         *(volatile u32*)0x40000D8  // destination address
#define REG_DMA3CNT         *(volatile u32*)0x40000DC  // control register

typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;

extern DMA *dma;

#define DMA_DESTINATION_INCREMENT (0 << 21)
#define DMA_DESTINATION_DECREMENT (1 << 21)
#define DMA_DESTINATION_FIXED (2 << 21)
#define DMA_DESTINATION_RESET (3 << 21)

#define DMA_SOURCE_INCREMENT (0 << 23)
#define DMA_SOURCE_DECREMENT (1 << 23)
#define DMA_SOURCE_FIXED (2 << 23)

#define DMA_REPEAT (1 << 25)

#define DMA_16 (0 << 26)
#define DMA_32 (1 << 26)

#define DMA_NOW (0 << 28)
#define DMA_AT_VBLANK (1 << 28)
#define DMA_AT_HBLANK (2 << 28)
#define DMA_AT_REFRESH (3 << 28)

#define DMA_IRQ (1 << 30)
#define DMA_ON (1 << 31)


// enum {IDLE, CHASE, FLEE};
// this enum is for our various AI_STATES so we can use a switch
// to change between them.

// Basically, IDLE = 0, CHASE = 1, FLEE = 2 as far as the compiler is concerned.

// Timers
// CONTROLLERS
#define REG_TM0CNT *(volatile unsigned short*)0x4000102
#define REG_TM1CNT *(volatile unsigned short*)0x4000106
#define REG_TM2CNT *(volatile unsigned short*)0x400010A
#define REG_TM3CNT *(volatile unsigned short*)0x400010E

// TIMER VALUES
#define REG_TM0D       *(volatile unsigned short*)0x4000100
#define REG_TM1D       *(volatile unsigned short*)0x4000104
#define REG_TM2D       *(volatile unsigned short*)0x4000108
#define REG_TM3D       *(volatile unsigned short*)0x400010C

// Timer flags
#define TIMER_ON      (1<<7)  
#define TM_IRQ        (1<<6)
#define TM_CASCADE    (1<<2)
#define TM_FREQ_1     0
#define TM_FREQ_64    1
#define TM_FREQ_256   2
#define TM_FREQ_1024  3

// Time factors to multiply clock ticks to convert to microsec (usec)
// The next line (uncommented) should be in myLib.c
// double timefactors[] = {0.059604, 3.811, 15.259, 59.382};
// extern double timefactors[];


// *** Interrupts ====================================================

// CONTROLLER
#define REG_IME *(unsigned short*)0x4000208 
// ENABLER
#define REG_IE *(unsigned short*)0x4000200  
// FLAG
#define REG_IF *(volatile unsigned short*)0x4000202

// 
#define REG_INTERRUPT *(unsigned int*)0x3007FFC
// DISPLAY STATUS
#define REG_DISPSTAT *(unsigned short*)0x4000004

//interrupt constants for turning them on
#define INT_VBLANK_ENABLE 1 << 3

//interrupt constants for checking which type of interrupt happened
#define INT_VBLANK 1 << 0
#define INT_TM1 1<<4
#define INT_BUTTON 1 << 12


// *** Sound =========================================================

#define REG_SOUNDCNT_X *(volatile u16 *)0x04000084

// register definitions
#define REG_SOUNDCNT_L        *(u16*)0x04000080
#define REG_SOUNDCNT_H        *(volatile u16*)0x04000082

// flags
#define SND_ENABLED           (1<<7)
#define SND_OUTPUT_RATIO_25   0
#define SND_OUTPUT_RATIO_50   (1<<0)
#define SND_OUTPUT_RATIO_100  (1<<1)
#define DSA_OUTPUT_RATIO_50   0
#define DSA_OUTPUT_RATIO_100  (1<<2)
#define DSA_OUTPUT_TO_RIGHT   (1<<8)
#define DSA_OUTPUT_TO_LEFT    (1<<9)
#define DSA_OUTPUT_TO_BOTH    (3<<8)
#define DSA_TIMER0            0
#define DSA_TIMER1            (1<<10)
#define DSA_FIFO_RESET        (1<<11)
#define DSB_OUTPUT_RATIO_50   0
#define DSB_OUTPUT_RATIO_100  (1<<3)
#define DSB_OUTPUT_TO_RIGHT   (1<<12)
#define DSB_OUTPUT_TO_LEFT    (1<<13)
#define DSB_OUTPUT_TO_BOTH    (3<<12)
#define DSB_TIMER0            0
#define DSB_TIMER1            (1<<14)
#define DSB_FIFO_RESET        (1<<15)

// FIFO address defines
#define REG_FIFO_A          (void *)0x040000A0
#define REG_FIFO_B          (void *)0x040000A4


// *** Tiles =========================================================

typedef struct { u16 tileimg[8192]; } charblock;
typedef struct { u16 tilemap[1024]; } screenblock;

#define CHARBLOCKBASE ((charblock *)0x6000000)
#define SCREENBLOCKBASE ((screenblock *)0x6000000)


//background offset registers
#define REG_BG0HOFS *(volatile unsigned short *)0x04000010
#define REG_BG1HOFS *(volatile unsigned short *)0x04000014
#define REG_BG2HOFS *(volatile unsigned short *)0x04000018
#define REG_BG3HOFS *(volatile unsigned short *)0x0400001C

#define REG_BG0VOFS *(volatile unsigned short *)0x04000012
#define REG_BG1VOFS *(volatile unsigned short *)0x04000016
#define REG_BG2VOFS *(volatile unsigned short *)0x0400001A
#define REG_BG3VOFS *(volatile unsigned short *)0x0400001E

//macros and bit constants for setting the background control register specifics
#define SBB(num) num << 8
#define CBB(num) num << 2
#define COLOR256 1 << 7
#define BG_SIZE0 0<<14      // 32 x 32 tiles
#define BG_SIZE1 1<<14      // 64 x 32
#define BG_SIZE2 2<<14      // 32 x 64
#define BG_SIZE3 3<<14      // 64 x 64

//  *** SPRITE =========================================================
#define SPRITE_MODE_1D (1 << 6) //put this into REG_DISPCNTL to enable 1D mapping mode
#define SPRITE_ENABLE (1 << 12) //put this into REG_DISPCNTL to enable sprites

#define ROWMASK 0xFF
#define COLMASK 0x1FF

#define ATTR0_REGULAR (0 << 8) //Normal Sprites
#define ATTR0_AFFINE (1 << 8) //Affine Sprites
#define ATTR0_HIDE (2 << 8) // Hide Sprites
#define ATTR0_DOUBLE_AFFINE (3 << 8) //Double Affine Sprites (Never used it before so don't ask me -Peter)
#define ATTR0_NORMAL (0 << 10) //Normal Rendering
#define ATTR0_BLEND (1 << 10) //Enables Alpha Blending.  Don't worry about it.  Unless you want too =D
#define ATTR0_WIN (2 << 10) //Object Window mode.  Again, no idea.
#define ATTR0_MOSAIC (1 << 12) //Enables the mosaic effect for this sprite.  It's a cool visual effect.  We can talk about it on thursday perhaps
#define ATTR0_4BPP (0 << 13) //16 color Sprites
#define ATTR0_8BPP (1 << 13) //256 color Sprites
#define ATTR0_SQUARE (0 << 14) //Square Shape
#define ATTR0_WIDE (1 << 14) // Wide Shape
#define ATTR0_TALL (2 << 14) //Tall Shape

#define ATTR1_HFLIP (1 << 12)
#define ATTR1_HFLIPFALSE (0 << 12)
#define ATTR1_VFLIP (1 << 13)
#define ATTR1_SIZE8 (0 << 14)
#define ATTR1_SIZE16 (1 << 14)
#define ATTR1_SIZE32 (2 << 14)
#define ATTR1_SIZE64 (3 << 14)

#define ATTR2_PALBANK(i) (i<<12)

#define OAM ((OBJ_ATTR*)(0x7000000))
#define SHADOWOAMLEN 128
#define SPRITE_PALETTE ((unsigned short*)(0x5000200))

#define SPRITEOFFSET16(r,c) (r)*32+(c)
#define PRIORITY(order) (((order) & 3) << 10) // priority for sprites


//  *** BLENDING=========================================================

#define REG_BLDMOD *(unsigned short*)0x4000050 //blend modes
#define REG_COLEV *(unsigned short*)0x4000052 //weights

//weights for each object
#define WEIGHTOFA(weight) (weight)
#define WEIGHTOFB(weight) (weight << 8)

//object a
#define BG0_A (1 << 0)
#define BG1_A (1 << 1)
#define BG2_A (1 << 2)
#define BG3_A (1 << 3)
#define OBJ_A (1 << 4)
#define BACKDROP_A (1 << 5)

//turn on bg blending
#define NORMAL_TRANS (1 << 6)

//object b
#define BG0_B (1 << 8)
#define BG1_B (1 << 9)
#define BG2_B (1 << 10)
#define BG3_B (1 << 11)
#define OBJ_B (1 << 12)
#define BACKDROP_B (1 << 13)

#define PI 3.141593

typedef struct{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
}OBJ_ATTR;

// #define SPRITEPALBANK0 0<<12 //ryu
// #define SPRITEPALBANK1 1<<12 //for guards
// #define SPRITEPALBANK2 2<<12 //extra stuff

//do I need this??
typedef struct {
    int row;
    int col;
} Sprite;

#define TRUE 1
#define FALSE 0

#endif
