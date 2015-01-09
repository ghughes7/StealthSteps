#include <stdlib.h>
#include <math.h>
#include "spriters.h"
#include "myLib.h"

unsigned short *videoBuffer = (u16 *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer =  (u16 *)0x600A000;

DMA *dma = (DMA *)0x40000B0;


void loadPalette(const unsigned short* palette)
{
	DMANow(3, (unsigned short*)palette, PALETTE, 256);

	PALETTE[WHITEINDEX] = WHITE; 
    // PALETTE[BLACKINDEX] = BLACK; 
    // PALETTE[REDINDEX] = RED; 
    // PALETTE[BLUEINDEX] = BLUE;
    PALETTE[GREENINDEX] = GREENINDEX;
}

// int manhattanDistance(COORD *p1, COORD *p2)
// {
// 	//should I use absolute values??
// 	return (abs(p1->x - p2->x) + abs(p1->y - p2->y));
// }

int compare(const void *a,const void *b) 
{
	int *x = (int *) a;
	int *y = (int *) b;
	return *x - *y;
}

//Find a point on the circle -> circle bieing the spotlight
//the origin coord being passed in contains ints so need to cast
// COORD* pointOnCircle(double radius, double angleInDegrees, COORD* origin)
// {
// 	COORD newCoord;
// 	COORD* ncp = &newCoord;
// 	double x = (radius * cos(angleInDegrees * PI/180.0)) + (double)origin->x;
// 	double y = (radius * sin(angleInDegrees * PI/180.0)) + (double)origin->y;

// 	int xCasted = (int)x;
// 	int yCasted = (int)y;

// 	ncp->x = xCasted;
// 	ncp->y = yCasted;

// 	return ncp;
// }


void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control)
{
	dma[channel].src = source;
	dma[channel].dst = destination;
	dma[channel].cnt = DMA_ON | control;
}

//** Palette Manipualtion Methods
//This function modifies only a single subpalette of colors.
//subPalette is tells us which subpalette of 16 colors to modify
//targetColor is the color we want the sprite to change to
void spriteColorChange16(char subPalette, unsigned short targetColor){
    int i;
    for(i=0; i<16; i++){
        //If current RED value is higher than target RED, decrement by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(31,0,0)) > (targetColor & COLOR(31,0,0))){
            SPRITE_PALETTE[subPalette*16 + i] -= COLOR(1,0,0);
        }
        //If current GREEN value is higher than target GREEN, decrement by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,31,0)) > (targetColor & COLOR(0,31,0))){
            SPRITE_PALETTE[subPalette*16 + i] -= COLOR(0,1,0);
        }
        //If current BLUE value is higher than target BLUE, decrement by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,0,31)) > (targetColor & COLOR(0,0,31))){
            SPRITE_PALETTE[subPalette*16 + i] -= COLOR(0,0,1);
        }
        //If current RED value is lower than target RED, increment by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(31,0,0)) < (targetColor & COLOR(31,0,0))){
            SPRITE_PALETTE[subPalette*16 + i] += COLOR(1,0,0);
        }
        //If current GREEN value is lower than target GREEN, increment by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,31,0)) < (targetColor & COLOR(0,31,0))){
            SPRITE_PALETTE[subPalette*16 + i] += COLOR(0,1,0);
        }
        //If current BLUE value is lower than target BLUE, increment by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,0,31)) < (targetColor & COLOR(0,0,31))){
            SPRITE_PALETTE[subPalette*16 + i] += COLOR(0,0,1);
        }
    }
}
//This function restores the orignal colors of the palette (it's very similar to spriteColorChange16)
//subPalette is tells us which subpalette of 16 colors to modify
//originalPalette is the original colors of the sprites (the palette from the header file)
void spriteColorRestore16(char subPalette, unsigned short const* originalPalette){
    int i;
    for(i=0; i<16; i++){
        //If current RED value is higher than target RED, decrement by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(31,0,0)) > (originalPalette[subPalette*16 + i] & COLOR(31,0,0))){
            SPRITE_PALETTE[subPalette*16 + i] -= COLOR(1,0,0);
        }
        //If current GREEN value is higher than target GREEN, decrement by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,31,0)) > (originalPalette[subPalette*16 + i] & COLOR(0,31,0))){
            SPRITE_PALETTE[subPalette*16 + i] -= COLOR(0,1,0);
        }
        //If current BLUE value is higher than target BLUE, decrement by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,0,31)) > (originalPalette[subPalette*16 + i] & COLOR(0,0,31))){
            SPRITE_PALETTE[subPalette*16 + i] -= COLOR(0,0,1);
        }
        //If current RED value is lower than target RED, increment by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(31,0,0)) < (originalPalette[subPalette*16 + i] & COLOR(31,0,0))){
            SPRITE_PALETTE[subPalette*16 + i] += COLOR(1,0,0);
        }
        //If current GREEN value is lower than target GREEN, increment by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,31,0)) < (originalPalette[subPalette*16 + i] & COLOR(0,31,0))){
            SPRITE_PALETTE[subPalette*16 + i] += COLOR(0,1,0);
        }
        //If current BLUE value is lower than target BLUE, increment by 1.
        if((SPRITE_PALETTE[subPalette*16 + i] & COLOR(0,0,31)) < (originalPalette[subPalette*16 + i] & COLOR(0,0,31))){
            SPRITE_PALETTE[subPalette*16 + i] += COLOR(0,0,1);
        }
    }    
}

//This function changes the tint of the entire sprite palette, which can be used for full screen fade in/out (since it modifies all sprites,
//whether they're 4BPP or 8BPP.
void spriteColorChange256(unsigned short targetColor){
    int i;
    for(i=0; i<256; i++){
        //If current RED value is higher than target RED, decrement by 1.
        if((SPRITE_PALETTE[i] & COLOR(31,0,0)) > (targetColor & COLOR(31,0,0))){
            SPRITE_PALETTE[i] -= COLOR(1,0,0);
        }
        //If current GREEN value is higher than target GREEN, decrement by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,31,0)) > (targetColor & COLOR(0,31,0))){
            SPRITE_PALETTE[i] -= COLOR(0,1,0);
        }
        //If current BLUE value is higher than target BLUE, decrement by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,0,31)) > (targetColor & COLOR(0,0,31))){
            SPRITE_PALETTE[i] -= COLOR(0,0,1);
        }
        //If current RED value is lower than target RED, increment by 1.
        if((SPRITE_PALETTE[i] & COLOR(31,0,0)) < (targetColor & COLOR(31,0,0))){
            SPRITE_PALETTE[i] += COLOR(1,0,0);
        }
        //If current GREEN value is lower than target GREEN, increment by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,31,0)) < (targetColor & COLOR(0,31,0))){
            SPRITE_PALETTE[i] += COLOR(0,1,0);
        }
        //If current BLUE value is lower than target BLUE, increment by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,0,31)) < (targetColor & COLOR(0,0,31))){
            SPRITE_PALETTE[i] += COLOR(0,0,1);
        }
    }      
}

void spriteColorRestore256(unsigned short const* originalPalette){
    int i;
    for(i=0; i<256; i++){
        //If current RED value is higher than target RED, decrement by 1.
        if((SPRITE_PALETTE[i] & COLOR(31,0,0)) > (originalPalette[i] & COLOR(31,0,0))){
            SPRITE_PALETTE[i] -= COLOR(1,0,0);
        }
        //If current GREEN value is higher than target GREEN, decrement by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,31,0)) > (originalPalette[i] & COLOR(0,31,0))){
            SPRITE_PALETTE[i] -= COLOR(0,1,0);
        }
        //If current BLUE value is higher than target BLUE, decrement by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,0,31)) > (originalPalette[i] & COLOR(0,0,31))){
            SPRITE_PALETTE[i] -= COLOR(0,0,1);
        }
        //If current RED value is lower than target RED, increment by 1.
        if((SPRITE_PALETTE[i] & COLOR(31,0,0)) < (originalPalette[i] & COLOR(31,0,0))){
            SPRITE_PALETTE[i] += COLOR(1,0,0);
        }
        //If current GREEN value is lower than target GREEN, increment by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,31,0)) < (originalPalette[i] & COLOR(0,31,0))){
            SPRITE_PALETTE[i] += COLOR(0,1,0);
        }
        //If current BLUE value is lower than target BLUE, increment by 1.
        if((SPRITE_PALETTE[i] & COLOR(0,0,31)) < (originalPalette[i] & COLOR(0,0,31))){
            SPRITE_PALETTE[i] += COLOR(0,0,1);
        }
    }       
}

void backgroundFade(unsigned short targetColor){
    int i;
    for(i=0; i<256; i++){
        //If current RED value is higher than target RED, decrement by 1.
        if((PALETTE[i] & COLOR(31,0,0)) > (targetColor & COLOR(31,0,0))){
            PALETTE[i] -= COLOR(1,0,0);
        }
        //If current GREEN value is higher than target GREEN, decrement by 1.
        if((PALETTE[i] & COLOR(0,31,0)) > (targetColor & COLOR(0,31,0))){
            PALETTE[i] -= COLOR(0,1,0);
        }
        //If current BLUE value is higher than target BLUE, decrement by 1.
        if((PALETTE[i] & COLOR(0,0,31)) > (targetColor & COLOR(0,0,31))){
            PALETTE[i] -= COLOR(0,0,1);
        }
        //If current RED value is lower than target RED, increment by 1.
        if((PALETTE[i] & COLOR(31,0,0)) < (targetColor & COLOR(31,0,0))){
            PALETTE[i] += COLOR(1,0,0);
        }
        //If current GREEN value is lower than target GREEN, increment by 1.
        if((PALETTE[i] & COLOR(0,31,0)) < (targetColor & COLOR(0,31,0))){
            PALETTE[i] += COLOR(0,1,0);
        }
        //If current BLUE value is lower than target BLUE, increment by 1.
        if((PALETTE[i] & COLOR(0,0,31)) < (targetColor & COLOR(0,0,31))){
            PALETTE[i] += COLOR(0,0,1);
        }
    }     
}

void backgroundRestore(unsigned short const* originalPalette){
    int i;
    for(i=0; i<256; i++){
        //If current RED value is higher than target RED, decrement by 1.
        if((PALETTE[i] & COLOR(31,0,0)) > (originalPalette[i] & COLOR(31,0,0))){
            PALETTE[i] -= COLOR(1,0,0);
        }
        //If current GREEN value is higher than target GREEN, decrement by 1.
        if((PALETTE[i] & COLOR(0,31,0)) > (originalPalette[i] & COLOR(0,31,0))){
            PALETTE[i] -= COLOR(0,1,0);
        }
        //If current BLUE value is higher than target BLUE, decrement by 1.
        if((PALETTE[i] & COLOR(0,0,31)) > (originalPalette[i] & COLOR(0,0,31))){
            PALETTE[i] -= COLOR(0,0,1);
        }
        //If current RED value is lower than target RED, increment by 1.
        if((PALETTE[i] & COLOR(31,0,0)) < (originalPalette[i] & COLOR(31,0,0))){
            PALETTE[i] += COLOR(1,0,0);
        }
        //If current GREEN value is lower than target GREEN, increment by 1.
        if((PALETTE[i] & COLOR(0,31,0)) < (originalPalette[i] & COLOR(0,31,0))){
            PALETTE[i] += COLOR(0,1,0);
        }
        //If current BLUE value is lower than target BLUE, increment by 1.
        if((PALETTE[i] & COLOR(0,0,31)) < (originalPalette[i] & COLOR(0,0,31))){
            PALETTE[i] += COLOR(0,0,1);
        }
    }    
}

void waitForVblank()
{
	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}


void flipPage()
{
    if(REG_DISPCTL & BACKBUFFER)
    {
        REG_DISPCTL &= ~BACKBUFFER;
        videoBuffer = backBuffer;
    }
    else
    {
        REG_DISPCTL |= BACKBUFFER;
        videoBuffer = frontBuffer;
    }
}

// void delay() {
//     int i;
//     volatile int b;
//     for (i=0; i < 10000; i++){
//         b++;
//     }
// }
