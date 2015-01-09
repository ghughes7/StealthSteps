#include "spriters.h"
#include "backgrounds.h"
#include "bg0_grass.h"
#include "bg1_edoTown.h"
#include "myLib.h"

/**
* Functions for controlling the backround
*
* Mainly for controlling the scrolling background
*
*/
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
        //masterHoff -= 256;
        shouldReload = 1;
    }
    if (bg2hOff > 256 && sbbX < sbbWidth)
    {
        sbbX += 1;
        bg0hOff -= 256;
        bg2hOff -= 256;
        //masterHoff += 256;
        shouldReload = 1;
    }

    waitForVblank();

    if (shouldReload) reloadMap(bg1_edoTownMap, sbbX, sbbY, sbbWidth, 24);
    if (shouldReload) reloadMap(bg0_grassMap, sbbX, sbbY, sbbWidth, 28);
}

void loadBG()
{
	loadTheBackground(bg0_grassPal, bg0_grassTiles, bg0_grassMap, 0, 28, bg0_grassTilesLen);
	loadTheBackground(bg1_edoTownPal, bg1_edoTownTiles, bg1_edoTownMap, 2, 24, bg1_edoTownTilesLen);
}

void loadTheBackground(unsigned const short *palette, unsigned const short *sourceTiles, unsigned const short *sourceMap, int charBlock, int screenBlock, int tileLength)
// void loadTheBackground()
{
    // loadPalette(bg1_edoTownPal);
    loadPalette(palette);

    // loadBGTiles(bg1_edoTownTiles, 0, bg1_edoTownTilesLen);
    loadBGTiles(sourceTiles, charBlock, tileLength);

    // reloadMap(bg1_edoTownMap, sbbX, sbbY, sbbWidth, 16);
    reloadMap(sourceMap, sbbX, sbbY, sbbWidth, screenBlock);

}

void loadBGTiles(unsigned const short *source, int charBlock, int tileLength)
{
    DMANow(3, source, &CHARBLOCKBASE[charBlock], tileLength/2);
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

    DMANow(3, source, &SCREENBLOCKBASE[screenBlock], control);
}

void loadMapSection(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock)
{
    int sbbMapCoordinate = OFFSET(sbbY, sbbX, sbbWidth) * 1024;
    //load a single map piece that is 256x256
    loadMapData(&source[sbbMapCoordinate], screenBlock, 0);
}

void reloadMap(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock)
{
    loadMapSection(source, sbbX, sbbY, sbbWidth, screenBlock);
    loadMapSection(source, sbbX+1, sbbY, sbbWidth, screenBlock+1);
    loadMapSection(source, sbbX, sbbY+1, sbbWidth, screenBlock+2);
    loadMapSection(source, sbbX+1, sbbY+1, sbbWidth, screenBlock+3);
}