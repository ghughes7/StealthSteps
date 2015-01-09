#include <stdio.h>
#include <stdlib.h>
#include "main.h"
#include "myLib.h"
#include "splash.h"
#include "instructionScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "sound.h"
// #include "BG512x512.h"
// #include "edoTownP1.h"
// #include "edoTownp0.h"
// #include "ryu.h"
#include "spriters.h"
#include "spritersSheet.h"
#include "backgrounds.h"
#include "bg0_grass.h"
#include "bg1_edoTown.h"

//sound files
#include "introMusic.h"
#include "mainMusic.h"
#include "gongSFX.h"


/**********************************
*
*
* Coming closer to completetion
* Things to do:
*   Enemy AI stuff
*   enemy animation stuff
*   full out barrel roll
*   collisions
* wanna make a main.h
*
*
**********************************/

int state = STARTSCREEN;
char buffer[41];
int winner = 0;

// //gameSong's current frequency
// int currFreq = THRESHOLDFREQ;
// int soundFlag = TRUE;
// //number of enemies left
// int remainingEnemies = MAXENEMIES;


int main() {

    setUpInterrupts();
    setUpSounds();
    
    for(;;) /* forever loop!*/
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		switch(state)
		{
			case STARTSCREEN:
                splash();
				break;
            case INSTRUCTIONSCREEN:
                instruction();
                break;
			case GAMESCREEN:
				game();
				break;
			case PAUSESCREEN:
				pause();
				break;
			case WINSCREEN:
				win();
				break;
			case LOSESCREEN:
				lose();
				break;
		}

        waitForVblank();
        flipPage();
        
    }
    return 0;
    
}


void splash(){

    REG_DISPCTL = MODE0 | BG1_ENABLE;
    REG_BG1CNT = CBB(0) | SBB(31) | BG_SIZE0;
    REG_BLDMOD = 0;
    REG_COLEV = 0;
    
    REG_BG0HOFS = 0;
    REG_BG2HOFS = 0;

    hideSprites();

    loadPalette(splashPal);
    DMANow(3, splashTiles, &CHARBLOCKBASE[0], splashTilesLen/2);
    DMANow(3, splashMap, &SCREENBLOCKBASE[31], splashMapLen/2);

    playSoundA(introMusic, INTROMUSICLEN, INTROMUSICFREQ);
   
   while(1)
   {
   		oldButtons = buttons;
        buttons = BUTTONS;
	    
	    if(BUTTON_PRESSED(BUTTON_START)){
	        // fillScreen4(BLACKINDEX);
	        stopSound();
	        //found some better stuff
	        playSoundB(gongSFX, GONGSFXLEN, GONGSFXFREQ);
	        //want to do a cool fade in 
	        playSoundA(mainMusic, MAINMUSICLEN, MAINMUSICFREQ);
            initGame();
            // REG_DISPCTL = MODE0 | BG0_ENABLE | BG2_ENABLE | SPRITE_ENABLE;
            // REG_BG0CNT = CBB(0) | SBB(28) | BG_SIZE1 | 1; //grass
            // REG_BG2CNT = CBB(2) | SBB(24) | BG_SIZE1 | 2; //stage
            // state = GAMESCREEN;
        // REG_BG3CNT = CBB(3) | SBB(31) | BG_SIZE0;
	        return;
	    }

	    if(BUTTON_PRESSED(BUTTON_SELECT)){
	        // fillScreen4(BLACKINDEX);
            muteSound();
            // REG_DISPCTL = MODE0 | BG2_ENABLE; //for shuriken
            instruction();
         //    REG_BG2CNT = CBB(0) | SBB(31) | BG_SIZE0;
	        // state = INSTRUCTIONSCREEN;

	        return;
	    }
   }
}



void instruction()
{   
    REG_DISPCTL = MODE0 | BG2_ENABLE; //for shuriken
    // REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE; //for shuriken
    REG_BG2CNT = CBB(0) | SBB(31) | BG_SIZE0;
    REG_BLDMOD = 0;
    REG_COLEV = 0;

    REG_BG0HOFS = 0;
    REG_BG2HOFS = 0;


    loadPalette(instructionScreenPal);
    DMANow(3, instructionScreenTiles, &CHARBLOCKBASE[0], instructionScreenTilesLen/2);
    DMANow(3, instructionScreenMap, &SCREENBLOCKBASE[31], instructionScreenMapLen/2);

    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

        if(BUTTON_PRESSED(BUTTON_SELECT)){
            // fillScreen4(BLACKINDEX);
            unMuteSound();
            state = STARTSCREEN;
            splash();
            return;
        }

        if(BUTTON_PRESSED(BUTTON_START)){
            // fillScreen4(BLACKINDEX);
            // REG_DISPCTL = MODE0 | BG1_ENABLE; //| BG0_ENABLE | SPRITE_ENABLE;
            unMuteSound();
            playSoundA(mainMusic, MAINMUSICLEN, MAINMUSICFREQ);
            state = GAMESCREEN;
            initGame();
            return;
        }

    }

}

void initGame()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG2_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = CBB(0) | SBB(28) | BG_SIZE1 | 1; //grass
    REG_BG2CNT = CBB(2) | SBB(24) | BG_SIZE1 | 3; //stage

    REG_BLDMOD = OBJ_A | BG0_B | BG2_B;
    REG_COLEV = WEIGHTOFA(11) | WEIGHTOFB(11);//might be going into spriter.c to get different weights
    
    REG_BG0HOFS = 0;
    REG_BG2HOFS = 0;
    masterHoff = 0;
    sbbX = 0;

    loadBG();
    // updateBG();
    // loadTheBackground(bg0_grassPal, bg0_grassTiles, bg0_grassMap, 0, 28, bg0_grassTilesLen);
    // loadTheBackground(bg1_edoTownPal, bg1_edoTownTiles, bg1_edoTownMap, 2, 24, bg1_edoTownTilesLen); //
    loadBGTiles(bg0_grassTiles, 0, bg0_grassTilesLen);
    loadBGTiles(bg1_edoTownTiles, 2, bg1_edoTownTilesLen);

    loadMapData(bg0_grassMap, 28, 1);
    loadMapData(bg1_edoTownMap, 24, 1);


    DMANow(3, spritersSheetPal, SPRITE_PALETTE, 256);
    DMANow(3, spritersSheetTiles, &CHARBLOCKBASE[28], spritersSheetTilesLen/2);

    hideSprites();
    initializeSprites();
    state = GAMESCREEN;
}

void game(){

	while(1){

	    oldButtons = buttons;
	    buttons = BUTTONS;

	    if(BUTTON_PRESSED(BUTTON_START)){
	        // pauseSound();
	        muteSound();
            drawPause();
	        state = PAUSESCREEN;
	        return;
	        
	    }

	    updatePlayer();
	    updateEnemies();
        updateScreenObjs();
	    updateBG();
	    updateOAM();
	 }
    
}

void pause(){

    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

	    if(BUTTON_PRESSED(BUTTON_START)){
	        // unPauseSound();
	        unMuteSound();
	        // fillScreen4(BLACKINDEX);
            erasePause();
	        state = GAMESCREEN;
	        return;
	    }
	    if(BUTTON_PRESSED(BUTTON_SELECT)){
	        unMuteSound();
            //I don't think any of this is working....
            // erasePause();
            // hideSprites();
            // REG_DISPCTL = MODE0 | BG2_ENABLE;
            // REG_BG2CNT = CBB(0) | SBB(31) | BG_SIZE0;

            splash();
	         // state = STARTSCREEN;
	        return;
	    }

    }
}

void win(){
    REG_DISPCTL = MODE0 | BG2_ENABLE;
    REG_BG2CNT = CBB(0) | SBB(31) | BG_SIZE0;
    REG_BLDMOD = 0;
    REG_COLEV = 0;

    REG_BLDMOD = 0;
    REG_COLEV = 0;
    
    REG_BG0HOFS = 0;
    REG_BG2HOFS = 0;

    hideSprites();
    updateBG();

    loadPalette(winScreenPal);
    DMANow(3, winScreenTiles, &CHARBLOCKBASE[0], winScreenTilesLen/2);
    DMANow(3, winScreenMap, &SCREENBLOCKBASE[31], winScreenMapLen/2);

    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

	    if(BUTTON_PRESSED(BUTTON_START)){

         //    REG_BG2CNT = CBB(0) | SBB(31) | BG_SIZE0;
	        // state = STARTSCREEN;
            splash();
	        return;
	    }
    }
}

void lose(){
    REG_DISPCTL = MODE0 | BG2_ENABLE;
    REG_BG2CNT = CBB(0) | SBB(31) | BG_SIZE0;
    REG_BLDMOD = 0;
    REG_COLEV = 0;
    
    REG_BG0HOFS = 0;
    REG_BG2HOFS = 0;
    hideSprites();
    
    loadPalette(loseScreenPal);
    DMANow(3, loseScreenTiles, &CHARBLOCKBASE[0], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCKBASE[31], loseScreenMapLen/2);

    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

	    if(BUTTON_PRESSED(BUTTON_START)){
	        // state = STARTSCREEN;
            // initSplash();
            // REG_DISPCTL = MODE0 | BG1_ENABLE;
            splash();
	        return;
	    }

    }
}
