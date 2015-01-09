/**
*
* Can sprites blend with one another???
**/

#include <stdlib.h>
#include "spriters.h"
#include "spritersSheet.h"
#include "myLib.h"
// #include "edoTownp0.h"
#include "sound.h"
#include "main.h"
#include "myLib.h"
#include "mainCollisionMap.h"
// #include "grassCollsisionMap.h"
// #include "backgrounds.h"
#include "bg0_grass.h"
#include "bg1_edoTown.h"

//sound files
#include "slashSFX.h"

PLAYER ryu;
PLAYER *ryup = &ryu;
COORD *ryuCoords[8];
// COORD *ryuCoordsPtr = &ryuCoords

//ryu's eight tracking coordinates
COORD ryuCoord1; //upper left hand corner
COORD ryuCoord2; //top-middle
COORD ryuCoord3; //upper right hand corner
COORD ryuCoord4; //middle-left
COORD ryuCoord5; //middle-right
COORD ryuCoord6; //bottom left hand corner
COORD ryuCoord7; //bottom-middle
COORD ryuCoord8; //botoom right hand corner

//pointers to ryu's eight tracking coordinates
COORD *ryuCP1 = &ryuCoord1;
COORD *ryuCP2 = &ryuCoord2;
COORD *ryuCP3 = &ryuCoord3;
COORD *ryuCP4 = &ryuCoord4;
COORD *ryuCP5 = &ryuCoord5;
COORD *ryuCP6 = &ryuCoord6;
COORD *ryuCP7 = &ryuCoord7;
COORD *ryuCP8 = &ryuCoord8;

//Guard decelerations
ENEMY guard0;
ENEMY *guard0p = &guard0;

ENEMY guard1;
ENEMY *guard1p = &guard1;

ENEMY guard2;
ENEMY *guard2p = &guard2;

ENEMY guard3;
ENEMY *guard3p = &guard3;

ENEMY guard4;
ENEMY *guard4p = &guard4;

ENEMY guard5;
ENEMY *guard5p = &guard5;

//SpotLights
ENEMY spotLight0;
ENEMY *spotLight0ptr = &spotLight0;

ENEMY spotLight1;
ENEMY *spotLight1ptr = &spotLight1;

ENEMY spotLight2;
ENEMY *spotLight2ptr = &spotLight2;

ENEMY spotLight3;
ENEMY *spotLight3ptr = &spotLight3;

ENEMY spotLight4;
ENEMY *spotLight4ptr = &spotLight4;

ENEMY spotLight5;
ENEMY *spotLight5ptr = &spotLight5;

ENEMY spotLight6;
ENEMY *spotLight6ptr = &spotLight6;

ENEMY spotLight7;
ENEMY *spotLight7ptr = &spotLight7;

ENEMY spotLight8;
ENEMY *spotLight8ptr = &spotLight8;

ENEMY spotLight9;
ENEMY *spotLight9ptr = &spotLight9;

ENEMY spotLight10;
ENEMY *spotLight10ptr = &spotLight10;

OBJ_ATTR shadowOAM[128]; // make this into a pointer next
OBJ_ATTR *shadowOAMptr = shadowOAM;

SCREEN_OBJ pauseSign;
SCREEN_OBJ *pauseSignptr = &pauseSign;

SCREEN_OBJ fireball0;
SCREEN_OBJ* fbp0 = &fireball0;

SCREEN_OBJ fireball1;
SCREEN_OBJ* fbp1 = &fireball1;

//make goal fireballs here

enum {RYUMOVE, CROUCHSLASH, ROLL, RYUHIT, RYUDIE, RYUIDLE};
enum {GUARDDOCILE=2, GUARDAGGRO, GUARDDEFEAT};
enum {ENEMY_UP, ENEMY_DOWN, ENEMY_LEFT, ENEMY_RIGHT};
enum {GUARD0, GUARD1, GUARD2, GUARD3, GUARD4, GUARD5};
enum {LIGHT0, LIGHT1, LIGHT2, LIGHT3, LIGHT4, LIGHT5, LIGHT6, LIGHT7, LIGHT8, LIGHT9, LIGHT10};
enum {FIRE0, FIRE1};

//player counters
int ryuMoveCounter = 0;
int stealthDuration = 500;
int coolDown = 1000;//? Before you can use super awesome stealh mode
int stealthFade = 0;
int reverseFade = 0;
int hidden = FALSE;
int stealthRecovered = TRUE; //can use stealth mode

//guard counters
int walkCounter = 0;
int deathCounter = 0;
int rageCounter = 0;

//spotlight stuff
int scanCounter = 0;
int flashLight = FALSE;

//button logic
int aPress = FALSE;
int bPress = FALSE;
int rPress = FALSE;
int blend = FALSE;
int cheatON = FALSE;

//palette counters (colors, and fade)
int whiteCount = 0;
int modoruCount = 0;
int blackCount = 0;

//game logic
int grandChamp = FALSE;

void initializeSprites(){

// ** PLAYER ================================================================
    ryup->width = 16;
    ryup->height = 32;
    ryup->rdel = 1;
    ryup->cdel = 1;
    //update ryu's bigRow and bigCol
    ryup->row = 160/2;//-ryu.width/2;
    ryup->col = 240/2-ryup->height/2 - 50;
    ryup->health = 3;
    ryup->dead = FALSE;
    ryup->aniCounter = 0;
    ryup->currFrame = 0;
    ryup->hflip = ATTR1_HFLIPFALSE;
    ryup->layer = 3;//behind grass
    ryup->lag = 1;
    ryup->detectable = TRUE; //grass collision
    ryup->stealthy = FALSE;

    ryup->aniState = RYUIDLE;

    //make coordinates for Ryu
    ryup->rightGawa = ryup->bigCol + ryup->width;
    ryup->bottomGawa = ryup->bigRow + ryup->height;
    //to be updated in updatePlayer()
    /* 
        0    1    2


        3         4


        5    6    7
    */
    // ryuCP1->x = 0;
    // ryuCP1->y = 0;
    ryuCoords[0] = ryuCP1;
    ryuCoords[1] = ryuCP2;
    ryuCoords[2] = ryuCP3;
    ryuCoords[3] = ryuCP4;
    ryuCoords[4] = ryuCP5;
    ryuCoords[5] = ryuCP6;
    ryuCoords[6] = ryuCP7;
    ryuCoords[7] = ryuCP8;

    updatePlayerTracking(ryuCoords);
           

// ** GUARDS ===============================================================
//Once upon a time
    /* 
        0    1    2



        3         4

        5    6    7 
    */

    guard0p->eNum = GUARD0;
    guard0p->width = 32; //
    guard0p->height = 40; //32 + 8
    guard0p->rdel = 1;
    guard0p->cdel = 1;

    guard0p->bigRow = 160/2+guard0p->height/2;
    guard0p->bigCol = 240/2-guard0p->width/2 + 100;

    guard0p->initRow = 160/2+guard0p->height/2;
    guard0p->initCol = 240/2-guard0p->width/2 + 100;

    guard0p->aniCounter = 0;
    guard0p->currFrame = 0;
    guard0p->hflip = ATTR1_HFLIPFALSE;
    guard0p->direction = ENEMY_LEFT;
    guard0p->moveCount = 0;
    guard0p->range = 15;
    guard0p->lag = 2;
    guard0p->reactionTime = 50;
    guard0p->health = 1; //1 for docile guards; 3 for angry guards
    guard0p->recovering = FALSE;
    guard0p->raging = FALSE;
    guard0p->dead = FALSE;
    guard0p->isLight = FALSE;
    guard0p->onScreen = ATTR0_REGULAR;
    guard0p->layer = 3;

    guard0p->aniState = GUARDDOCILE;

//guard1
    guard1p->eNum = GUARD1;
    guard1p->width = 32;
    guard1p->height = 40;
    guard1p->rdel = 1;
    guard1p->cdel = 1;

    guard1p->bigRow = 160/2+guard1p->width/2 + 5;
    guard1p->bigCol = 240/2-guard1p->height/2 + 365;

    guard1p->initRow = 160/2+guard1p->width/2 + 5;
    guard1p->initCol = 240/2-guard1p->height/2 + 365;

    guard1p->aniCounter = 0;
    guard1p->currFrame = 0;
    guard1p->hflip = ATTR1_HFLIPFALSE;
    guard1p->range = 45;
    guard1p->lag = 2;
    guard1p->reactionTime = 50;
    guard1p->health = 1;
    guard1p->recovering = FALSE;
    guard1p->raging = FALSE;
    guard1p->dead = FALSE;
    guard1p->isLight = FALSE;
    guard1p->onScreen = ATTR0_HIDE; //initially not on the screen
    guard1p->layer = 3;

    guard1p->aniState = GUARDDOCILE;
    
    // buttons = BUTTONS;
    
    // guard0p = 0; //hacky way to get rid of a sprite, change where the pointer is pointing
    //probably causes memory leak
//guard 2
    guard2p->eNum = GUARD2;
    guard2p->width = 32;
    guard2p->height = 40;
    guard2p->rdel = 1;
    guard2p->cdel = 1;

    guard2p->bigRow = 160/2+guard2p->width/2 - 20;
    guard2p->bigCol = 240/2-guard2p->height/2 + 800;

    guard2p->initRow = 160/2+guard2p->width/2 - 20;
    guard2p->initCol = 240/2-guard2p->height/2 + 800;

    guard2p->aniCounter = 0;
    guard2p->currFrame = 0;
    guard2p->hflip = ATTR1_HFLIP;
    guard2p->range = 100;
    guard2p->lag = 2;
    guard2p->reactionTime = 50;
    guard2p->health = 1;
    guard2p->recovering = FALSE;
    guard2p->raging = FALSE;
    guard2p->dead = FALSE;
    guard2p->isLight = FALSE;
    guard2p->onScreen = ATTR0_HIDE; //initially not on the screen
    guard2p->layer = 3;

    guard2p->aniState = GUARDDOCILE;

//guard3 
    guard3p->eNum = GUARD3;
    guard3p->width = 32;
    guard3p->height = 40;
    guard3p->rdel = 1;
    guard3p->cdel = 1;

    guard3p->bigRow = 160/2+guard3p->width/2 - 20;
    guard3p->bigCol = 240/2-guard3p->height/2 + 1000;

    guard3p->initRow = 160/2+guard3p->width/2 - 20;
    guard3p->initCol = 240/2-guard3p->height/2 + 1000;

    guard3p->aniCounter = 0;
    guard3p->currFrame = 0;
    guard3p->hflip = ATTR1_HFLIPFALSE;
    guard3p->range = 100;
    guard3p->lag = 2;
    guard3p->reactionTime = 50;
    guard3p->health = 1;
    guard3p->recovering = FALSE;
    guard3p->raging = FALSE;
    guard3p->dead = FALSE;
    guard3p->isLight = FALSE;
    guard3p->onScreen = ATTR0_HIDE; //initially not on the screen
    guard3p->layer = 3;

    guard3p->aniState = GUARDDOCILE;

//guard4
    guard4p->eNum = GUARD4;
    guard4p->width = 32;
    guard4p->height = 40;
    guard4p->rdel = 1;
    guard4p->cdel = 1;

    guard4p->bigRow = 160/2+guard4p->width/2 + 5;
    guard4p->bigCol = 240/2-guard4p->height/2 + 1435;

    guard4p->initRow = 160/2+guard4p->width/2 + 5;
    guard4p->initCol = 240/2-guard4p->height/2 + 1435;

    guard4p->aniCounter = 0;
    guard4p->currFrame = 0;
    guard4p->hflip = ATTR1_HFLIPFALSE;
    guard4p->range = 25;
    guard4p->lag = 2;
    guard4p->reactionTime = 50;
    guard4p->health = 1;
    guard4p->recovering = FALSE;
    guard4p->raging = FALSE;
    guard4p->dead = FALSE;
    guard4p->isLight = FALSE;
    guard4p->onScreen = ATTR0_HIDE; //initially not on the screen
    guard4p->layer = 3;

    guard4p->aniState = GUARDDOCILE;

//guard5
    guard5p->eNum = GUARD5;
    guard5p->width = 32;
    guard5p->height = 40;
    guard5p->rdel = 1;
    guard5p->cdel = 1;

    guard5p->bigRow = 160/2+guard5p->width/2 + 5;
    guard5p->bigCol = 240/2-guard5p->height/2 + 1690;

    guard5p->initRow = 160/2+guard5p->width/2 + 5;
    guard5p->initCol = 240/2-guard5p->height/2 + 1690;

    guard5p->aniCounter = 0;
    guard5p->currFrame = 0;
    guard5p->hflip = ATTR1_HFLIPFALSE;
    guard5p->range = 15;
    guard5p->lag = 2;
    guard5p->reactionTime = 50;
    guard5p->health = 1;
    guard5p->recovering = FALSE;
    guard5p->raging = FALSE;
    guard5p->dead = FALSE;
    guard5p->isLight = FALSE;
    guard5p->onScreen = ATTR0_HIDE; //initially not on the screen
    guard5p->layer = 3;

    guard5p->aniState = GUARDDOCILE;

// ** SPOTLIGHTS ============================================================
/*Once upon a time I was trying to do this */
    //Using the origin(center of the circle) to find the rest of the points
    /*
             1   
          0     2
        3         4
          5     7
             6 
    */ 

//spotLight0
    spotLight0ptr->eNum = LIGHT0;
    spotLight0ptr->width = 24;
    spotLight0ptr->height = 24;
    spotLight0ptr->bigRow = 45;
    spotLight0ptr->bigCol = 125;
    spotLight0ptr->initRow = 45;
    spotLight0ptr->initCol = 125;
    spotLight0ptr->range = 80;
    spotLight0ptr->lag = 2;
    spotLight0ptr->direction = ENEMY_DOWN;
    spotLight0ptr->isLight = TRUE;
    spotLight0ptr->onScreen = ATTR0_REGULAR;
    // spotLight0ptr->radius = 12.0;
    // spotLight0ptr->angle = 0.0; 
    spotLight0ptr->health = 99;
    spotLight0ptr->layer = 1; //don't mess with it, necessary for another function
    // spotLight0ptr->origin->x = spotLight0ptr->height/2;
    // spotLight0ptr->origin->y = spotLight0ptr->width/2;

//spotLight1
    spotLight1ptr->eNum = LIGHT1;
    spotLight1ptr->width = 24;
    spotLight1ptr->height = 24;
    spotLight1ptr->bigRow = 160/2+spotLight1ptr->height/2 - 10;
    spotLight1ptr->bigCol = 240/2-spotLight1ptr->width/2 + 210;
    spotLight1ptr->initRow = 160/2+spotLight1ptr->height/2 - 10;
    spotLight1ptr->initCol = 240/2-spotLight1ptr->width/2 + 210;
    spotLight1ptr->range = 140;
    spotLight1ptr->lag = 2;
    spotLight1ptr->direction = ENEMY_LEFT;
    spotLight1ptr->isLight = TRUE;
    spotLight1ptr->onScreen = ATTR0_REGULAR; 
    spotLight1ptr->health = 99;
    spotLight1ptr->layer = 1;

//spotLight2    
    spotLight2ptr->eNum = LIGHT2;
    spotLight2ptr->width = 24;
    spotLight2ptr->height = 24;
    spotLight2ptr->bigRow = 160/2+spotLight2ptr->height/2 + 20;
    spotLight2ptr->bigCol = 240/2-spotLight2ptr->width/2 + 160;
    spotLight2ptr->initRow = 160/2+spotLight2ptr->height/2 + 20;
    spotLight2ptr->initCol = 240/2-spotLight2ptr->width/2 + 160;
    spotLight2ptr->range = 130;
    spotLight2ptr->lag = 2;
    spotLight2ptr->direction = ENEMY_RIGHT;
    spotLight2ptr->isLight = TRUE;
    spotLight2ptr->onScreen = ATTR0_HIDE;
    spotLight2ptr->health = 99;
    spotLight2ptr->layer = 1;

//spotLight3    
    spotLight3ptr->eNum = LIGHT3;
    spotLight3ptr->width = 24;
    spotLight3ptr->height = 24;
    spotLight3ptr->bigRow = 160/2+spotLight3ptr->height/2 -42;
    spotLight3ptr->bigCol = 240/2-spotLight3ptr->width/2 + 540;
    spotLight3ptr->initRow = 160/2+spotLight3ptr->height/2 - 42;
    spotLight3ptr->initCol = 240/2-spotLight3ptr->width/2 + 540;
    spotLight3ptr->range = 80;
    spotLight3ptr->lag = 2; // faster than normal
    spotLight3ptr->direction = ENEMY_UP;
    spotLight3ptr->isLight = TRUE;
    spotLight3ptr->onScreen = ATTR0_HIDE;
    spotLight3ptr->health = 99;
    spotLight3ptr->layer = 1;

//spotLight4    
    spotLight4ptr->eNum = LIGHT4;
    spotLight4ptr->width = 24;
    spotLight4ptr->height = 24;
    spotLight4ptr->bigRow = 160/2+spotLight4ptr->height/2 + 30;
    spotLight4ptr->bigCol = 240/2-spotLight4ptr->width/2 + 700;
    spotLight4ptr->initRow = 160/2+spotLight4ptr->height/2 + 30;
    spotLight4ptr->initCol = 240/2-spotLight4ptr->width/2 + 700;
    spotLight4ptr->range = 190;
    spotLight4ptr->lag = 2;
    spotLight4ptr->direction = ENEMY_RIGHT;
    spotLight4ptr->isLight = TRUE;
    spotLight4ptr->onScreen = ATTR0_HIDE;
    spotLight4ptr->health = 99;
    spotLight4ptr->layer = 1;   

//spotLight5->middle of the map
    spotLight5ptr->eNum = LIGHT5;
    spotLight5ptr->width = 24;
    spotLight5ptr->height = 24;
    spotLight5ptr->bigRow = 160/2+spotLight5ptr->height/2 - 45;
    spotLight5ptr->bigCol = 240/2-spotLight5ptr->width/2 + 904;
    spotLight5ptr->initRow = 160/2+spotLight5ptr->height/2 - 45;
    spotLight5ptr->initCol = 240/2-spotLight5ptr->width/2 + 904;
    spotLight5ptr->range = 80;
    spotLight5ptr->lag = 2;
    spotLight5ptr->direction = ENEMY_DOWN;
    spotLight5ptr->isLight = TRUE;
    spotLight5ptr->onScreen = ATTR0_HIDE;
    spotLight5ptr->health = 99;
    spotLight5ptr->layer = 1;   

//spotLight6    
    spotLight6ptr->eNum = LIGHT6;
    spotLight6ptr->width = 24;
    spotLight6ptr->height = 24;
    spotLight6ptr->bigRow = 160/2+spotLight6ptr->height/2 + 30;
    spotLight6ptr->bigCol = 240/2-spotLight6ptr->width/2 + 920;
    spotLight6ptr->initRow = 160/2+spotLight6ptr->height/2 + 30;
    spotLight6ptr->initCol = 240/2-spotLight6ptr->width/2 + 920;
    spotLight6ptr->range = 190;
    spotLight6ptr->lag = 2;
    spotLight6ptr->direction = ENEMY_LEFT;
    spotLight6ptr->isLight = TRUE;
    spotLight6ptr->onScreen = ATTR0_HIDE;
    spotLight6ptr->health = 99;
    spotLight6ptr->layer = 1;

//spotLight7    
    spotLight7ptr->eNum = LIGHT7;
    spotLight7ptr->width = 24;
    spotLight7ptr->height = 24;
    spotLight7ptr->bigRow = 160/2+spotLight7ptr->height/2 + 30;
    spotLight7ptr->bigCol = 240/2-spotLight7ptr->width/2 + 1400;
    spotLight7ptr->initRow = 160/2+spotLight7ptr->height/2 + 30;
    spotLight7ptr->initCol = 240/2-spotLight7ptr->width/2 + 1400;
    spotLight7ptr->range = 80;
    spotLight7ptr->lag = 2;
    spotLight7ptr->direction = ENEMY_RIGHT;
    spotLight7ptr->isLight = TRUE;
    spotLight7ptr->onScreen = ATTR0_HIDE;
    spotLight7ptr->health = 99;
    spotLight7ptr->layer = 1;

//spotLight8    
    spotLight8ptr->eNum = LIGHT8;
    spotLight8ptr->width = 24;
    spotLight8ptr->height = 24;
    spotLight8ptr->bigRow = 160/2+spotLight8ptr->height/2 - 45;
    spotLight8ptr->bigCol = 240/2-spotLight8ptr->width/2 + 1500;
    spotLight8ptr->initRow = 160/2+spotLight8ptr->height/2 - 45;
    spotLight8ptr->initCol = 240/2-spotLight8ptr->width/2 + 1550;
    spotLight8ptr->range = 80;
    spotLight8ptr->lag = 2;
    spotLight8ptr->direction = ENEMY_DOWN;
    spotLight8ptr->isLight = TRUE;
    spotLight8ptr->onScreen = ATTR0_HIDE;
    spotLight8ptr->health = 99;
    spotLight8ptr->layer = 1;

//spotLight9    
    spotLight9ptr->eNum = LIGHT9;
    spotLight9ptr->width = 24;
    spotLight9ptr->height = 24;
    spotLight9ptr->bigRow = 160/2+spotLight9ptr->height/2 - 40;
    spotLight9ptr->bigCol = 240/2-spotLight9ptr->width/2 + 1650;
    spotLight9ptr->initRow = 160/2+spotLight9ptr->height/2 - 40;
    spotLight9ptr->initCol = 240/2-spotLight9ptr->width/2 + 1650;
    spotLight9ptr->range = 80;
    spotLight9ptr->lag = 2;
    spotLight9ptr->direction = ENEMY_DOWN;
    spotLight9ptr->isLight = TRUE;
    spotLight9ptr->onScreen = ATTR0_HIDE;
    spotLight9ptr->health = 99;
    spotLight9ptr->layer = 1;

//spotLight 10 the rebel
    spotLight10ptr->eNum = LIGHT10;
    spotLight10ptr->width = 24;
    spotLight10ptr->height = 24;
    spotLight10ptr->bigRow = 160/2+spotLight10ptr->height/2 - 40;
    spotLight10ptr->bigCol = 240/2-spotLight10ptr->width/2 + 1800;
    spotLight10ptr->initRow = 160/2+spotLight10ptr->height/2 - 40;
    spotLight10ptr->initCol = 240/2-spotLight10ptr->width/2 + 1800;
    spotLight10ptr->range = 0;
    spotLight10ptr->lag = 2;
    spotLight10ptr->direction = ENEMY_DOWN;
    spotLight10ptr->isLight = TRUE;
    spotLight10ptr->onScreen = ATTR0_HIDE;
    spotLight10ptr->health = 99;
    spotLight10ptr->layer = 1;

// ** SCREEN OBJECTS ======================================================
   	pauseSignptr->width = 72;
  	pauseSignptr->height = 16;
   	pauseSignptr->row = 160/2-pauseSignptr->height/2;
   	pauseSignptr->col = 240/2-pauseSignptr->width/2;

    fbp0->width = 8;
    fbp0->height = 16;
    fbp0->bigRow = 40;
    fbp0->bigCol = 1896;
    fbp0->aniState = 0; //some number
    fbp0->currFrame = 0;
    fbp0->layer = 4; //lowest layer and still visible
    fbp0->type = FIRE0;
    fbp0->onScreen = ATTR0_HIDE;

    fbp1->width = 8;
    fbp1->height = 16;
    fbp1->bigRow = 40;
    fbp1->bigCol = 1936;
    fbp1->aniState = 0;
    fbp1->currFrame = 0;
    fbp1->layer = 4;
    fbp1->type = FIRE1;
    fbp1->onScreen = ATTR0_HIDE;
    
    bg0hOff = 0;
    bg2hOff = 0;
    bg2vOff = 0;//don't think I need this one
	masterHoff = 0;
	masterVoff = 0;
}

//sets the 8 tracking points around ryu
//could be weird because of franken sprites
void updatePlayerTracking(COORD* cp[])
{
    

    // if (ryup->hflip == ATTR1_HFLIP)
    // {
    //     ryup->rightGawa = ryup->bigCol + ryup->width - 8;
    //     ryup->bottomGawa = ryup->bigRow + ryup->height;

    //     cp[2]->x = ryup->bigRow;        cp[2]->y = ryup->bigCol;
    //     cp[1]->x = ryup->bigRow;        cp[1]->y = ryup->rightGawa/2;
    //     cp[0]->x = ryup->bigRow;        cp[0]->y = ryup->rightGawa;
    //     cp[4]->x = ryup->bottomGawa/2;  cp[4]->y = ryup->bigCol;
    //     cp[3]->x = ryup->bottomGawa/2;  cp[3]->y = ryup->rightGawa;
    //     cp[7]->x = ryup->bottomGawa;    cp[7]->y = ryup->bigCol;
    //     cp[6]->x = ryup->bottomGawa;    cp[6]->y = ryup->rightGawa/2;
    //     cp[5]->x = ryup->bottomGawa;    cp[5]->y = ryup->rightGawa;
    // }
    // else 
    // {
        ryup->rightGawa = ryup->bigCol + ryup->width;
        ryup->bottomGawa = ryup->bigRow + ryup->height;

        cp[0]->x = ryup->bigRow;        cp[0]->y = ryup->bigCol;
        cp[1]->x = ryup->bigRow;        cp[1]->y = ryup->rightGawa/2;
        cp[2]->x = ryup->bigRow;        cp[2]->y = ryup->rightGawa;
        cp[3]->x = ryup->bottomGawa/2;  cp[3]->y = ryup->bigCol;
        cp[4]->x = ryup->bottomGawa/2;  cp[4]->y = ryup->rightGawa;
        cp[5]->x = ryup->bottomGawa;    cp[5]->y = ryup->bigCol;
        cp[6]->x = ryup->bottomGawa;    cp[6]->y = ryup->rightGawa/2;
        cp[7]->x = ryup->bottomGawa;    cp[7]->y = ryup->rightGawa;   
    // }
}

void hideSprites()
{
    for (int i = 0; i < SHADOWOAMLEN; i++)
    {
        (shadowOAMptr+i)->attr0 = ATTR0_HIDE;
    }

}

//** COLLISIONS ==================================================================================

void collisionWithEnemy(PLAYER* rp, ENEMY* ep)
{
    //and Select button has not been pressed
    //so no collision detection is the enemy is not on the screen
    if (ep->onScreen == ATTR0_HIDE)  return;

    COORD* topLeft = ryuCoords[0];
    COORD* topRight = ryuCoords[2];
    COORD* bottomLeft = ryuCoords[5];
    COORD* bottomRight = ryuCoords[7];

    if (ep->health && !(cheatON))//if the enemy has not been dispatched
    {
        int flipCheck = ep->col + ep->width;
        if (ep->hflip == ATTR1_HFLIP && ep->aniState && ep->aniState != GUARDDOCILE)   flipCheck = ep->col + ep->width + 16;
        //First check to see if the bounding boxes collide
        if ((rp->col < flipCheck) && (rp->row + rp->height > ep->row)
            && (rp->col + rp->width > ep->col) && (rp->row < ep->row + ep->height))
        {
            // (shadowOAMptr+0)->attr2 |= ATTR2_PALBANK(1);

            int overlapTop = rp->row + rp->height - ep->row;
            int overlapBottom = ep->row + ep->height - rp->row;
            int overlapLeft = rp->col + rp->width - ep->col;
            int overlapRight = ep->col + ep->width - rp->col;

            //find min
            int mins[] = {overlapTop, overlapBottom, overlapLeft, overlapRight};
            // int minsLen = sizeof(mins)/sizeof(mins[0]);

            qsort (mins, sizeof(mins)/sizeof(*mins), sizeof(*mins), compare);
            int least = mins[0];

            if (ep->isLight && !rp->stealthy)
            {
                flashLight = TRUE;
                // spriteColorRestore256(spritersSheetPal);
                whiteCount++;
                modoruCount++;
                if (rp->detectable)
                {
                    // rp->target = TRUE;
                    if (whiteCount < 7)
                    {
                        backgroundFade(WHITE);
                    }
                    else if (modoruCount < 14 && modoruCount)
                    {
                        backgroundRestore(bg1_edoTownPal);
                        // whiteCount = 0;
                        // modoruCount = 0;
                    } 
                    else
                    {
                        whiteCount = 0;
                        modoruCount = 0;
                    }
                    //aka a bad time of it mate
                    terminatePlayer(guard0p);
                    terminatePlayer(guard1p);
                    terminatePlayer(guard2p);
                    terminatePlayer(guard3p);
                    terminatePlayer(guard4p);
                    terminatePlayer(guard5p);

                }
            } 
            else
            {
                if (least == overlapTop)
                {
                    //checking ryu's bottom points to 
                    // guard's top points
                    //play discovered sound
                    // if (ep->isLight)
                    // {
                    //     //do light stuff
                    //     //ahh this shit doesn't matter
                    //     //which side you collided with
                    //     //can probably go outside "least" check
                    // }
                    // else
                    // {
                        if (ep->aniState == GUARDDOCILE)
                        {
                            rp->row = ep->row - rp->height;
                        }
                    // }
                }
                else if (least == overlapBottom)
                {
                    // checking guard's bottom points
                    // to ryu's top points
                    // (shadowOAMptr+0)->attr2 |= ATTR2_PALBANK(1);
                    // if (ep->isLight)
                    // {
                    //     backgroundFade(WHITE);
                    // }
                    // else
                    // {
                        if (ep->aniState == GUARDDOCILE)
                        {
                           ryup->row = ep->row + ep->height;
                        }
                    // }  
                }
                else if (least == overlapLeft)
                {
                    //If you are discoverd by the light
                    // if (ep->isLight)
                    // {
                    //     //GUARDAGGRO (all enemies)
                    //     //sound the alarm
                    // }
                    // else //guard you can kill
                    // {
                        if ((rp->aniState == CROUCHSLASH) && (rp->currFrame >= 4) && (rp->hflip == ATTR1_HFLIPFALSE))
                        {
                            //don't get shoved back (like a small guy)
                        }
                        //this might cause him to get shoved back when he slashes
                        else
                        {
                            if (!rp->stealthy)
                            {

                                if (ep->aniState != GUARDAGGRO)
                                {
                                    //GUARDAGGRO (just that one maybe)
                                    //guard makes grunty sounds and starts to ram you
                                    rp->col = ep->col - rp->width; 
                                    ep->aniState = GUARDAGGRO;
                                    ep->health = 2;
                                    //SUPERSTRONG GUARDS
                                    // ep->health = 10;
                                }
                                else if (ep->aniState == GUARDAGGRO)
                                {

                                    rp->health--;
                                    if (!ryup->health)
                                    {
                                        ryup->dead = TRUE;
                                        // ep->aniState = GUARDDOCILE;
                                    } 
                                    rp->recovering = TRUE;
                                    rp->currFrame = 0;
                                    rp->hflip = ATTR1_HFLIPFALSE;
                                    rp->aniState = RYUHIT;
                                    //ryu takes damage, flies back, flashes, loses a life
                                    //bounce guard a bit back too?
                                    
                                    ep->hflip = ATTR1_HFLIPFALSE;
                                    ep->bigCol += 30; 
                                }
                            }
                            else //can't phase through enemies no matter how stealy your steps
                            {
                                if (!ep->isLight)  rp->col = ep->col - rp->width;
                            }
                        }
                    // }
                }
                else //overlapRight
                {
                    // if (ep->isLight)
                    // {
                        
                    // }
                    // else
                    // {
                        if ((rp->aniState == CROUCHSLASH) && (rp->currFrame >= 4) && (rp->hflip == ATTR1_HFLIP))
                        {
                            //don't get shoved back (like a small guy)
                        }
                        else
                        {
                            if (!rp->stealthy)
                            {
                                if (ep->aniState != GUARDAGGRO)
                                {
                                    rp->col = ep->col + ep->width;
                                    ep->aniState = GUARDAGGRO;
                                    ep->health = 2;
                                    //SUPERSTRONG GUARDS
                                    // ep->health = 10;
                                }
                                else if (ep->aniState == GUARDAGGRO)
                                {
                                    rp->health--;
                                    if (!ryup->health)
                                    {
                                        ryup->dead = TRUE;
                                        // ep->aniState = GUARDDOCILE;
                                    } 
                                    rp->recovering = TRUE;
                                    // (shadowOAMptr+0)->attr2 |= ATTR2_PALBANK(1);
                                    rp->currFrame = 0;
                                    rp->hflip = ATTR1_HFLIP;
                                    rp->aniState = RYUHIT;

                                    ep->hflip = ATTR1_HFLIP;
                                    ep->bigCol -= 30;
                                    
                                }
                            }
                            else // you is somethin' stealthy
                            {
                                if (!ep->isLight) rp->col = ep->col + ep->width;
                            }
                        }
                    // }
                }   
            }
        }
        // else
        // {
        //     flashLight = FALSE;
        // }

        // // flashLight = FALSE;
        // // If no longer colliding fix the palette
        // if (!flashLight) //if flashLight is true (collided and no longer colliding with)
        // {
        //     // spriteColorChange256(GREEN);
        //     //use a count
        //     backgroundRestore(bg1_edoTownPal);

        // }

        //Second check collision between bounding box of sword and enemies' face
        if (!ep->isLight && rp->aniState == CROUCHSLASH && rp->currFrame >= 4)
        {
            if (rp->hflip == ATTR1_HFLIPFALSE)
            {
                //for more challenge make range smaller
                if ((rp->col < ep->col + ep->width) && (rp->row + rp->height > ep->row)
                   && (rp->col + rp->width > ep->col) && (rp->row < ep->row + ep->height))
                {
                    // (shadowOAMptr+0)->attr2 |= ATTR2_PALBANK(2);
                    //guard takes a hit
                    if (!ep->recovering)
                    {
                        ep->health--;
                        // ep->bigCol += 10; //makes it too easy
                        ep->recovering = TRUE;
                    }
                    ep->aniState = GUARDDEFEAT;
                }
            }
            else if (rp->hflip == ATTR1_HFLIP)
            {
                //for more challenge make range smaller
                if ((rp->col - 32 < ep->col + ep->width) && (rp->row + rp->height > ep->row)
                   && (rp->col + rp->width > ep->col) && (rp->row < ep->row + ep->height))
                {
                    // (shadowOAMptr+0)->attr2 |= ATTR2_PALBANK(2);
                    if (!ep->recovering)
                    {
                        ep->health--;
                        // ep->bigCol -= 10; //makes it too easy
                        ep->recovering = TRUE;
                    }
                    ep->aniState = GUARDDEFEAT;
                }
            }
        }

        //flying back motion
        //might need more collision stuff here
        if (ryup->aniState == RYUHIT)
        {
            if (ryup->bigCol < 0) ryup->col = 0;

            if (ep->hflip == ATTR1_HFLIP)
            {
                if (mainCollisionMapBitmap[OFFSET(topRight->x, topRight->y, 2048)] == WHITE
                    && mainCollisionMapBitmap[OFFSET(bottomRight->x, bottomRight->y, 2048)] == WHITE)
                {
                    if (ryup->bigCol + ryup->width > 2045) ryup->col = 240-ryup->width;
                    else
                    {
                        //movement++
                        //camera
                        if (ryup->aniCounter%10 == 0)
                        {
                            if (ryup->col > 200 && masterHoff < SCREENRIGHT)
                            {
                                bg0hOff++;
                                bg2hOff++;
                                masterHoff++;
                            }
                            else
                            {
                                ryup->col++;
                            }
                        }
                    }
                }
            }
            else
            {
                if (mainCollisionMapBitmap[OFFSET(topLeft->x, topLeft->y, 2048)] == WHITE
                    && mainCollisionMapBitmap[OFFSET(bottomLeft->x, bottomLeft->y, 2048)] == WHITE)
                {
                    //movement--
                    //camera
                    if (ryup->aniCounter%10 == 0)
                    {
                        if (ryup->col < 16 && masterHoff > SCREENLEFT)
                        {   

                            bg0hOff--;
                            bg2hOff--;
                            masterHoff--;
                    
                        }
                        else
                        { 
                            ryup->col--;
                        }
                    }  
                }
            }
        }
    }
}

//with maps and screen boundaries
//returns 0 if you cannot move there
//returns 1 if you are within the main bounds of the map (valid)
//returns 2 if you are within the bounds of the grass (valid and hidden from light)
void mapCollisions(COORD* ryuCs[])
{
    COORD* topLeft = ryuCs[0];
    // COORD* topMiddle = ryuCs[1];
    COORD* topRight = ryuCs[2];
    // COORD* leftMiddle = ryuCs[3];
    // COORD* rightMiddle = ryuCs[4];
    COORD* bottomLeft = ryuCs[5];
    // COORD* bottomMiddle = ryuCs[6];
    COORD* bottomRight = ryuCs[7];

    //Don't go below the screen
    if (ryup->bigRow > 160-ryup->height-3) ryup->row = 160-ryup->height-3;

    if (BUTTON_HELD(BUTTON_LEFT))
    {
        if (mainCollisionMapBitmap[OFFSET(topLeft->x, topLeft->y, 2048)] == WHITE
            && mainCollisionMapBitmap[OFFSET(bottomLeft->x, bottomLeft->y, 2048)] == WHITE)
        {
            if (ryup->bigCol < 2) ryup->col = 2;

            if (ryup->aniState == CROUCHSLASH)
            {
                if (masterHoff > SCREENLEFT && ryup->col < SCREENHMIDDLE)
                {
                    if (ryuMoveCounter%(ryup->lag*2) == 0)
                    {
                        bg0hOff -= ryup->cdel;
                        bg2hOff -= ryup->cdel;
                        masterHoff -= ryup->cdel; 
                    }
                }
                else
                {
                    if (ryuMoveCounter%(ryup->lag*2) == 0)
                    {
                        ryup->col--;
                    }
                }
            }

            else if (ryup->aniState == RYUMOVE)
            {
                if (masterHoff > SCREENLEFT && ryup->col < SCREENHMIDDLE)
                {
 
                    bg0hOff -= ryup->cdel;
                    bg2hOff -= ryup->cdel;
                    masterHoff -= ryup->cdel;   
                }
                else
                {
                    if (ryuMoveCounter%ryup->lag == 0)  ryup->col--;
                }
            }
            
        }
        ryup->hflip = ATTR1_HFLIP;           
    }
    else if (BUTTON_HELD(BUTTON_RIGHT))
    {
        if (mainCollisionMapBitmap[OFFSET(topRight->x, topRight->y, 2048)] == WHITE
            && mainCollisionMapBitmap[OFFSET(bottomRight->x, bottomRight->y, 2048)] == WHITE)
        {
            if (ryup->bigCol + ryup->width > 2045) ryup->col = 240-ryup->width;
            if (ryup->aniState == CROUCHSLASH)
            {
                if (masterHoff < SCREENRIGHT && ryup->col > SCREENHMIDDLE)
                {
                    if (ryuMoveCounter%(ryup->lag*2) == 0)
                    {
                        bg0hOff += ryup->cdel;
                        bg2hOff += ryup->cdel;
                        masterHoff += ryup->cdel;
                    }
                }
                else
                {
                    if (ryuMoveCounter%(ryup->lag*2) == 0)
                    // if (ryuMoveCounter%ryup->lag == 0)
                    {
                        ryup->col++;
                        
                    }
                }
                ryup->hflip = ATTR1_HFLIPFALSE;
            }
            else if (ryup->aniState == RYUMOVE)
            {
                if (masterHoff <= SCREENRIGHT && ryup->col > SCREENHMIDDLE)
                {
                    bg0hOff += ryup->cdel;
                    bg2hOff += ryup->cdel;
                    masterHoff += ryup->cdel;
                    // ryup->col = ryup->col - masterHoff;
                }
                else
                {
                    if (ryuMoveCounter%ryup->lag == 0)
                    {
                        ryup->col++;
                    }
                }

            }
        }   
        ryup->hflip = ATTR1_HFLIPFALSE;
    }
    else if (BUTTON_HELD(BUTTON_UP))
    {
        if (mainCollisionMapBitmap[OFFSET(topLeft->x, topLeft->y, 2048)] == WHITE)
        {
            if (ryup->aniState == CROUCHSLASH)
            {
                if (ryuMoveCounter%(ryup->lag*2) == 0)
                {
                    ryup->row--;
                }
            }
            else if (ryup->aniState == RYUMOVE)
            {
                if (ryuMoveCounter%ryup->lag == 0)
                {
                    ryup->row--;
                }
            }
        }
    }
    else if (BUTTON_HELD(BUTTON_DOWN))
    {
        // if (ryup->bigRow > 160-ryup->height-3) ryup->row = 160-ryup->height-3;

        if (mainCollisionMapBitmap[OFFSET(bottomRight->x, bottomRight->y, 2048)] == WHITE)
        {
            if (ryup->aniState == CROUCHSLASH)
            {
                if (ryuMoveCounter%(ryup->lag*2) == 0)
                {
                    ryup->row++;
                }
            }

            else if (ryup->aniState == RYUMOVE)
            {
                if (ryuMoveCounter%ryup->lag == 0)
                {
                    ryup->row++;
                }
            }
        }
    }

    if (ryup->aniState == ROLL)
    {
        if (ryup->hflip == ATTR1_HFLIP)
        {

            if (mainCollisionMapBitmap[OFFSET(topLeft->x, topLeft->y, 2048)] == WHITE
                && mainCollisionMapBitmap[OFFSET(bottomLeft->x, bottomLeft->y, 2048)] == WHITE)
            {
                if (masterHoff > SCREENLEFT && ryup->col < SCREENHMIDDLE)
                {
                    bg0hOff -= ryup->cdel*2;
                    bg2hOff -= ryup->cdel*2;
                    masterHoff -= ryup->cdel*2;
                }
                else
                {
                    if (ryup->bigCol < 0) ryup->col = 0;
                    else       ryup->col -= ryup->cdel*2;  
                }
            }
        }
        else
        {
            if (ryup->bigCol + ryup->width > 2045) ryup->col = 240-ryup->width;
            
            if (mainCollisionMapBitmap[OFFSET(topRight->x, topRight->y, 2048)] == WHITE
                && mainCollisionMapBitmap[OFFSET(bottomRight->x, bottomRight->y, 2048)] == WHITE)
            {
                
                if (masterHoff < SCREENRIGHT && ryup->col > SCREENHMIDDLE)
                {
                    bg0hOff += ryup->cdel*2;
                    bg2hOff += ryup->cdel*2;
                    masterHoff += ryup->cdel*2;
                }
                else
                {
                    ryup->col += ryup->cdel*2;                    
                } 
            }
        }  
    }
}

// *** PLAYER CONTROL ============================================================================

void updatePlayer()
{
    ryuMoveCounter++;
    ryup->prevAniState = ryup->aniState;

    ryup->bigRow = ryup->row + masterVoff;
    ryup->bigCol = ryup->col + masterHoff;


    // if (ryup->bigRow > 160-ryup->height-5)
    // {
    //     //crouch state has an |= take it out after testing
    //     (shadowOAMptr+0)->attr2 |= ATTR2_PALBANK(2);
    //     // guard0p->aniState = GUARDAGGRO;

    // }

    updatePlayerTracking(ryuCoords);
    
    //for the spotlight, are you on the grass and it should be not moving
    ryup->detectable = (ryup->bigRow > 160-ryup->height-5 
        && ryup->aniState == CROUCHSLASH
        && !BUTTON_HELD(BUTTON_LEFT) 
        && !BUTTON_HELD(BUTTON_RIGHT) 
        && !BUTTON_HELD(BUTTON_UP)
        && !BUTTON_HELD(BUTTON_DOWN))? FALSE: TRUE;   
    
    collisionWithEnemy(ryup, guard0p);
    collisionWithEnemy(ryup, guard1p);
    collisionWithEnemy(ryup, guard2p);
    collisionWithEnemy(ryup, guard3p);
    collisionWithEnemy(ryup, guard4p);
    collisionWithEnemy(ryup, guard5p);

    collisionWithEnemy(ryup, spotLight0ptr);
    collisionWithEnemy(ryup, spotLight1ptr);
    collisionWithEnemy(ryup, spotLight2ptr);
    collisionWithEnemy(ryup, spotLight3ptr);
    collisionWithEnemy(ryup, spotLight4ptr);
    collisionWithEnemy(ryup, spotLight5ptr);
    collisionWithEnemy(ryup, spotLight6ptr);
    collisionWithEnemy(ryup, spotLight7ptr);
    collisionWithEnemy(ryup, spotLight8ptr);
    collisionWithEnemy(ryup, spotLight9ptr);
    // collisionWithEnemy(ryup, spotLight10ptr);

    endGame();

    buttonDataQuery();
    playerStealthLogic();
    playerAnimation();
    playerSpriteWork();

    //state changing logic

}

void endGame()
{
    //if you reach the end you win

    if (ryup->dead)
    {
        blackCount++;
        //dead stuff
        //lose screen
        //lose sound
        ryup->layer = 1;
        ryup->aniState = RYUDIE;
        //playing the death music
        //what if I restored a palette of the bg I'm about to load??
        if (blackCount < 220)
        {
            if (ryuMoveCounter%4==0) 
            {
                backgroundFade(BLACK);
                spriteColorChange16(1, BLACK);
                spriteColorChange16(2, BLACK);
            }
        }
        else
        {
            // initLose();//something else something better
            stopSound();
            lose();
            ryup->dead = FALSE;
            blackCount = 0;
        }

    }
    if (ryup->bigRow < 40 && ryup->bigCol > 1896 && ryup->bigCol < 1936)
    {
        blackCount++;
        grandChamp = TRUE;
        
        if (blackCount < 220)
        {
            if (ryuMoveCounter%4 == 0)
            {
                backgroundFade(BLACK);
                spriteColorChange16(1, BLACK);
                // spriteColorChange16(2, BLACK);
            }
        }
        else
        {
            stopSound();
            win();
            blackCount = 0;
            grandChamp = FALSE;
        }
    }
}

void playerStealthLogic()
{
    stealthFade++;
    reverseFade++;

    if (hidden) //might need another boolean here like "hidden"
    {
        stealthRecovered = FALSE;
        if (stealthFade%2==0) spriteColorChange16(0, BLACK);
        
        stealthDuration--;
        if (!stealthDuration)
        {
            hidden = FALSE; //break out of loop
            blend = !blend;
            coolDown = 1000; //reset cool down count
        } 
    }
    
    if (!stealthDuration)
    {
        ryup->stealthy = FALSE;
        if (reverseFade%5==0) spriteColorRestore16(0, spritersSheetPal);
        
        coolDown--;
        if (!coolDown)
        {
            stealthDuration = 500;// break this condition
            stealthRecovered = TRUE;
        }
    }

}

void ghostControls(int button)
{
    switch (button)
    {
        case BUTTON_A:
            
            if (BUTTON_A && ryup->aniState != CROUCHSLASH
                && ryup->aniState != ROLL && ryup->aniState != RYUHIT
                && ryup->aniState != RYUDIE)
            {
                ryup->row += 8;
                ryup->aniState = CROUCHSLASH;
                ryup->currFrame = 0;
                aPress = TRUE;
            }

            else if (BUTTON_A && ryup->aniState == CROUCHSLASH
                && ryup->aniState != ROLL && ryup->aniState != RYUHIT
                && ryup->aniState != RYUDIE)
                {
                ryup->row -= 8;
                ryup->aniState = RYUIDLE;
                ryup->currFrame = 0;
                aPress = FALSE;
                }
            break;

        case BUTTON_B:

            if (BUTTON_B && ryup->aniState == CROUCHSLASH)
            {
                bPress = TRUE;
            }     
            break;

        case BUTTON_L:
            if (BUTTON_L && ryup->aniState != ROLL && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE) //want to do the roll animation
            {
                ryup->aniState = ROLL;
                ryup->currFrame = 0;
            }           
            break;


        case BUTTON_R:
            
            if (BUTTON_R && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE 
                && stealthRecovered)
            {

                ryup->stealthy = TRUE;
                rPress = TRUE;
                hidden = TRUE;
                blend = !blend;

            }
            break;

        case BUTTON_SELECT:

            if (BUTTON_SELECT)
            {
                //forever till the end of the game -> cheat code
                blend = !blend; //let's you walk throught shit too

                cheatON = (cheatON)? FALSE: TRUE; //this was sooo conviente
                // I don't wanna get rid of it

            }
            break;

        case BUTTON_LEFT:

            if (BUTTON_LEFT && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {
                //might consolodate later like UP and DOWN
                if (ryup->aniState == CROUCHSLASH)
                {
                    mapCollisions(ryuCoords);
                }
                else
                {
                    ryup->aniState = RYUMOVE;
                    mapCollisions(ryuCoords);     

                }
            }
            break;

        case BUTTON_RIGHT:
            
            if(BUTTON_RIGHT && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {
                //might consolodate later like UP and DOWN
                if (ryup->aniState == CROUCHSLASH)
                {
                    mapCollisions(ryuCoords);
                }
                else
                {
                    ryup->aniState = RYUMOVE;
                    mapCollisions(ryuCoords);
                }
            }
            break;

        case BUTTON_UP:
            
            if(BUTTON_UP && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {
                if (ryup->aniState == CROUCHSLASH);
                else ryup->aniState = RYUMOVE;
                mapCollisions(ryuCoords);
            }
            break;

        case BUTTON_DOWN:

            if(BUTTON_DOWN && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {
                if (ryup->aniState == CROUCHSLASH);
                else ryup->aniState = RYUMOVE;
                mapCollisions(ryuCoords);
            }
            break;

        default:
            if (ryup->aniState != CROUCHSLASH && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {
                ryup->aniState = RYUIDLE;
            }
            break;

    }
    
}

void buttonDataQuery()
{
    if (BUTTON_PRESSED(BUTTON_A) && ryup->aniState != CROUCHSLASH
        && ryup->aniState != ROLL && ryup->aniState != RYUHIT
        && ryup->aniState != RYUDIE && !grandChamp)
    {
        ryup->row += 8;
        ryup->aniState = CROUCHSLASH;
        // bPress = FALSE;
        ryup->currFrame = 0;
        aPress = TRUE;

    }

    else if (BUTTON_PRESSED(BUTTON_A) && ryup->aniState == CROUCHSLASH
        && ryup->aniState != ROLL && ryup->aniState != RYUHIT
        && ryup->aniState != RYUDIE && !grandChamp)
    {
        ryup->row -= 8;
        ryup->aniState = RYUIDLE;
        ryup->currFrame = 0;
        aPress = FALSE;
    }

    if (BUTTON_PRESSED(BUTTON_B) && !grandChamp)
    {
        bPress = TRUE;
    }

    if (BUTTON_PRESSED(BUTTON_L) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp) //want to do the roll animation
    {
        ryup->aniState = ROLL;
        ryup->currFrame = 0;

    }

    if (BUTTON_PRESSED(BUTTON_R) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE 
        && stealthRecovered && !grandChamp)
    {
        //this one will run out it has a timer
        //cool down timer will start
        
        // for (int i=0; i<60; i++) 
        // {
        //     if (stealthFade%7==0)  spriteColorChange16(0, BLACK);
        //     // else if (reverseFade%14==0) spriteColorRestore16(0, spritersSheetPal);
        //     stealthFade++;
        // }
        // ryup->detectable = FALSE;
        ryup->stealthy = TRUE;
        rPress = TRUE;
        hidden = TRUE;
        blend = !blend;
        // stealthCoolDown();// coolDown--;
        // playerStealthLogic();
        // REG_COLEV |= WEIGHTOFA(5);
    }
    // else if (BUTTON_PRESSED(BUTTON_R) && rPress)
    // {
    //     rPress = FALSE;
    //     // for (int i=0; i<30; i++) spriteColorRestore256(spritersSheetPal);
    //     blend = !blend;
    // }

    if (BUTTON_PRESSED(BUTTON_SELECT))
    {
        //forever till the end of the game -> cheat code
        blend = !blend; //let's you walk throught shit too
        // for (int i=0; i<30; i++) spriteColorChange16(0, BLACK);
        ryup->health = 99;
        // cheatON = (cheatON)? FALSE: TRUE;
        // ryup->aniState = RYUHIT;
        // ryup->currFrame++;
        // playerSpriteWork();
    }

    if (BUTTON_HELD(BUTTON_LEFT) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {
        //might consolodate later like UP and DOWN
        if (ryup->aniState == CROUCHSLASH)
        {
            mapCollisions(ryuCoords);
        }
        else
        {
            ryup->aniState = RYUMOVE;
            mapCollisions(ryuCoords);     

        }

    }

    else if(BUTTON_HELD(BUTTON_RIGHT) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {
        //might consolodate later like UP and DOWN
        if (ryup->aniState == CROUCHSLASH)
        {
            mapCollisions(ryuCoords);
        }
        else
        {
            ryup->aniState = RYUMOVE;
            mapCollisions(ryuCoords);

        }
        // bg2hOff++;
        // masterHoff++;

    }

    else if(BUTTON_HELD(BUTTON_UP) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {
        if (ryup->aniState == CROUCHSLASH);
        else ryup->aniState = RYUMOVE;
        mapCollisions(ryuCoords);
    }

    else if(BUTTON_HELD(BUTTON_DOWN) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {
        if (ryup->aniState == CROUCHSLASH);
        else ryup->aniState = RYUMOVE;
        mapCollisions(ryuCoords);
    }
    else
    {
        // if (!(BUTTON_HELD(BUTTON_RIGHT) ||(BUTTON_HELD(BUTTON_LEFT)) || (BUTTON_HELD(BUTTON_UP)) || (BUTTON_HELD(BUTTON_DOWN)) || (sora.sprite == SORAHURT) || (sora.sprite == SORAROLL)|| (sora.sprite == SORASTRIKE)))
        if (ryup->aniState != CROUCHSLASH && ryup->aniState != ROLL
            && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
        {
            // ryup->row += 16;
            ryup->aniState = RYUIDLE;
            //do I need mapCollisions() here?
        }
        // ryup->aniState = ryup->prevAniState;
        // ryup->currFrame = 0;
    }
}

void playerAnimation()
{
	if (ryup->aniState == RYUIDLE)
	{
        ryup->idleCounter++;

    	if (ryup->idleCounter%10 == 0)
    	{
    		ryup->currFrame++;
    		ryup->currFrame = (ryup->currFrame > 1)? 0: ryup->currFrame;
    	}
		
	}

    else if (ryup->aniState == RYUMOVE)
    {
        ryup->aniCounter++;
        if (ryup->aniCounter%8 == 0)
        {
            // ryu.currFrame++;
            // ryu.currFrame = 3;

            ryup->currFrame++;

            ryup->currFrame = (ryup->currFrame > 6)? 3: ryup->currFrame;
            // ryup->currFrame = (ryup->currFrame == 6)? 0: ryup->currFrame;
        }
    }

    else if (ryup->aniState == CROUCHSLASH)
    {
        if (BUTTON_HELD(BUTTON_RIGHT) || BUTTON_HELD(BUTTON_LEFT) ||
            BUTTON_HELD(BUTTON_UP) || BUTTON_HELD(BUTTON_DOWN))
        {
            ryup->aniCounter++;
            if (ryup->aniCounter%16 == 0)
            {

                ryup->currFrame++;

                ryup->currFrame = (ryup->currFrame > 3)? 0: ryup->currFrame;
            }
        }
        if (bPress && !BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_LEFT) &&
            !BUTTON_HELD(BUTTON_UP) && !BUTTON_HELD(BUTTON_DOWN))
        {
            // ryup->currFrame = 4;
            ryup->aniCounter++;
            // ryup->currFrame = 4;
            // if (ryup->aniCounter%3 == 0)
            // {
            ryup->currFrame++;
            // ryup->currFrame++;
            playSoundB(slashSFX, SLASHSFXLEN, SLASHSFXFREQ);        

            if (ryup->currFrame > 5)
            {
                ryup->currFrame = 3;
                // ryup->aniState = CROUCHSLASH;
                bPress = FALSE;
            }
                // ryup->currFrame = (ryup->currFrame > 5)? 0: ryup->currFrame;
            // }
        }
        else
        {
            bPress = FALSE;
        }
    }

    else if (ryup->aniState == ROLL)
    {
        //go through the whole sequence
        //going to have to disable other buttons during 
        //while the sequence is occuring
        ryup->aniCounter++;
        if (ryup->aniCounter%4 == 0)
        {
            ryup->currFrame++;

            if (ryup->currFrame > 5)
            {
                ryup->currFrame = 0;
                ryup->aniState = (aPress)? CROUCHSLASH: RYUIDLE;
            }
        }
        mapCollisions(ryuCoords); //do I really need this here??
                                    //looks like I really do.

    }

    else if (ryup->aniState == RYUHIT)
    {
        ryup->aniCounter++;
        if (ryup->aniCounter%6 == 0)
        {
            ryup->currFrame++;

            if (ryup->currFrame > 5)
            {
                ryup->currFrame = 0;
                ryup->aniState = RYUIDLE;
                ryup->recovering = FALSE;

            }
        }
        mapCollisions(ryuCoords);
    }

    else if (ryup->aniState == RYUDIE)
    {
        ryup->aniCounter++;
        
        if (ryup->aniCounter%80 == 0)
        {
            ryup->currFrame++;
                
        }
    }

}

void playerSpriteWork()
{
    //hide of all the extra bits and pieces
    (shadowOAMptr+2)->attr0 = ATTR0_HIDE;
    
    if (ryup->aniState == RYUIDLE)
    {
        ryup->height = 32;
        ryup->width = 16;

        if (ryup->currFrame < 2)
        {
            (shadowOAMptr+1)->attr0 = ATTR0_HIDE;
            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;
            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState-5, ryup->currFrame*2)) | PRIORITY(ryup->layer);   
        }

    }


    else if (ryup->aniState == RYUMOVE)
    {

        if (ryup->currFrame < 3)
        {
            //might need to add ryu's size here
            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;
            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState, ryup->currFrame*2)) | PRIORITY(ryup->layer);
            
            if (ryup->currFrame == 2)
            {
                ryup->height = 31;
                ryup->width = 16;
            }

            ryup->currFrame = 3;
            // break;
        }

        else if (ryup->currFrame == 3)
        {
            ryup->height = 31;
            ryup->width = 19;

            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;
            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState, ryup->currFrame*2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;
            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col - 8) & COLMASK) | ATTR1_SIZE16 | ryup->hflip; 
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col + 16) & COLMASK) | ATTR1_SIZE16 | ryup->hflip;    
            }
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState, ryup->currFrame*2+2)) | PRIORITY(ryup->layer);

        }

        else if (ryup->currFrame == 4) // this is where that extra bit is shadowOAM[1]
        {
            ryup->height = 32;
            ryup->width = 18;

            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;
            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState,ryup->currFrame*2+1)) | PRIORITY(ryup->layer);

            // (shadowOAMptr+1)->.attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            (shadowOAMptr+1)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;
            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col - 8) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            }
            else
            {
                //specifically here for no reason
                (shadowOAMptr+1)->attr1 = ((ryup->col + 16) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            }
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState, ryup->currFrame*2+3)) | PRIORITY(ryup->layer);
            // (shadowOAMptr+1)->attr0 = ATTR0_HIDE;
        }

        else if (ryup->currFrame == 5)
        {
            ryup->height = 31; 
            ryup->width = 25;

            (shadowOAMptr+1)->attr0 = ATTR0_HIDE;
            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+0)->attr1 = ((ryup->col-16) & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            }
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState, ryup->currFrame*2+2)) | PRIORITY(ryup->layer);
            // (shadowOAMptr+1)->attr0 = ATTR0_HIDE;

        }

        else if (ryup->currFrame == 6)
        {
            ryup->height = 32;
            ryup->width = 18;

            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState, ryup->currFrame*2+4)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = (ryup->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col-8) & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col + 16) & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            }
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState, ryup->currFrame*2+6)) | PRIORITY(ryup->layer);            
            // (shadowOAMptr+1)->attr0 = ATTR0_HIDE;
        }
        
    }

    else if (ryup->aniState == CROUCHSLASH)
    {
        ryup->height = 24;
        ryup->width = 16;
        //currframe is 0
        if (ryup->currFrame < 4)
        {
            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*2))| PRIORITY(ryup->layer);//for testing purposes
            // (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+2, ryup->currFrame*2)) | PRIORITY(ryup->layer);

            if (ryup->currFrame%2 == 0)
            {
                ryup->height = 24;
                ryup->width = 16;
            }
            else
            {
                ryup->height = 23;
                ryup->width = 16;
            }
        }

        else if (ryup->currFrame == 4)
        {
            ryup->height = 23;
            ryup->width = 32;

            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+0)->attr1 = ((ryup->col-16) & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            }
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = ((ryup->col) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+2, ryup->currFrame*2)) | PRIORITY(ryup->layer);      
        }
        else if (ryup->currFrame == 5)
        {
            ryup->height = 24; 
            ryup->width = 40;

            (shadowOAMptr+0)->attr0 = (ryup->row & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+0)->attr1 = ((ryup->col-16) & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            }

            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*2+2)) | PRIORITY(ryup->layer);       

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = ((ryup->col) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+2, ryup->currFrame*2+2)) | PRIORITY(ryup->layer);   

            //this could cause some interesting problems
            (shadowOAMptr+2)->attr0 = ((ryup->row) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+2)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+2)->attr1 = ((ryup->col-24) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+2)->attr1 = ((ryup->col+32) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            }
            (shadowOAMptr+2)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*3+1)) | PRIORITY(ryup->layer);
        }
    }

    else if (ryup->aniState == ROLL)
    {
        //first frame - looks like there is excess space in the sprite sheet as well...
        if (ryup->currFrame == 0)
        {
            ryup->height = 24;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+2, ryup->currFrame*2)) | PRIORITY(ryup->layer);          
        }
        else if (ryup->currFrame == 1)
        {
            ryup->height = 16;
            ryup->width = 24;

            (shadowOAMptr+0)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+1, ryup->currFrame*2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col-8) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col+16) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
                
            }
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+1, ryup->currFrame*4)) | PRIORITY(ryup->layer);         
        }
        else if (ryup->currFrame == 2)
        {
            ryup->height = 24;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*2+1)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+2, ryup->currFrame*2+1)) | PRIORITY(ryup->layer);            
        }
        else if (ryup->currFrame == 3)
        {
            ryup->height = 16;
            ryup->width = 24;

            (shadowOAMptr+0)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+1, ryup->currFrame*2+1)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP)
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col-8) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col+16) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            }
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+1, ryup->currFrame*3)) | PRIORITY(ryup->layer);        
        }
        else if (ryup->currFrame == 4)
        {
            ryup->height = 24;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4, ryup->currFrame*3-2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(ryup->aniState*4+2, ryup->currFrame*3-2)) | PRIORITY(ryup->layer); 
        }
        else if (ryup->currFrame == 5)
        {
            ryup->height = 28;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(ryup->aniState*4-1, ryup->currFrame*2+2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ATTR0_HIDE;
        }

    }

    else if (ryup->aniState == RYUHIT)
    {
        if (ryup->currFrame == 0)
        {
            ryup->height = 23;
            ryup->width = 18;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(12, 1)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(14, 1)) | PRIORITY(ryup->layer);

            (shadowOAMptr+2)->attr0 = ((ryup->row) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+2)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP) (shadowOAMptr+2)->attr1 = ((ryup->col+16) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            else   (shadowOAMptr+2)->attr1 = ((ryup->col-8) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+2)->attr2 = (SPRITEOFFSET16(12, 0)) | PRIORITY(ryup->layer);
        }
        else if (ryup->currFrame == 1)
        {
            ryup->height = 30;
            ryup->width = 19;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(11, 4)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP) (shadowOAMptr+1)->attr1 = ((ryup->col+16) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            else (shadowOAMptr+1)->attr1 = ((ryup->col-8) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(13, 3)) | PRIORITY(ryup->layer);            

        }
        else if (ryup->currFrame == 2)
        {
            ryup->height = 24;
            ryup->width = 15;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(12, 6)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(14, 6)) | PRIORITY(ryup->layer);
        }
        else if (ryup->currFrame == 3)
        {
            ryup->height = 16;
            ryup->width = 24;

            (shadowOAMptr+0)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = ((ryup->col) & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(13, 8)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP) (shadowOAMptr+1)->attr1 = ((ryup->col-8) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            else   (shadowOAMptr+1)->attr1 = ((ryup->col+16) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(13, 10)) | PRIORITY(ryup->layer);            
        }
        else if (ryup->currFrame == 4)
        {
            ryup->height = 24;
            ryup->width = 16;
            
            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(12, 11)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(14, 11)) | PRIORITY(ryup->layer);             
        }

        else if (ryup->currFrame == 5)
        {
            ryup->height = 28;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE32 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(11, 13)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ATTR0_HIDE;
        }
    }

    else if (ryup->aniState == RYUDIE) //you are deaddy, dying, dead
    {
        if (ryup->currFrame == 0)
        {
            ryup->height = 23;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(15, 0)) | PRIORITY(ryup->layer);
                
            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+1)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(17, 0)) | PRIORITY(ryup->layer);
            
        }
        else if (ryup->currFrame == 1)
        {
            ryup->height = 15;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(16, 2)) | PRIORITY(ryup->layer);

            (shadowOAMptr+1)->attr0 = ATTR0_HIDE;        
        }

        else if (ryup->currFrame == 2)
        {
            ryup->height= 16;
            ryup->width = 20;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
            if(blend) (shadowOAMptr+0)->attr0 |= ATTR0_BLEND;

            (shadowOAMptr+0)->attr1 = (ryup->col & COLMASK) | ATTR1_SIZE16 | ryup->hflip;
            (shadowOAMptr+0)->attr2 = (SPRITEOFFSET16(16, 4)) | PRIORITY(ryup->layer);
                
            (shadowOAMptr+1)->attr0 = ((ryup->row+8) & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
            if(blend) (shadowOAMptr+1)->attr0 |= ATTR0_BLEND;

            if (ryup->hflip == ATTR1_HFLIP) (shadowOAMptr+1)->attr1 = ((ryup->col-8) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            else  (shadowOAMptr+1)->attr1 = ((ryup->col+16) & COLMASK) | ATTR1_SIZE8 | ryup->hflip;
            (shadowOAMptr+1)->attr2 = (SPRITEOFFSET16(16, 6)) | PRIORITY(ryup->layer);
        }
    }
}

// *** ENEMY control =============================================================================================

void updateEnemies()
{
	//will I need to pass in ENEMY * to this one and switch on the state
    //I wonder....
    //I mean I guess technically I shouldn't be updating them if they are not
    //even on the screen
    // I can use onScreen and set it equal to true if they pass the range
    //draw according to that and other logic, yea, yea....
    // guard0p->aniState = GUARDAGGRO;

    //GUARDS
    guard0p->prevAniState = guard0p->aniState;
    guard0p->row = guard0p->bigRow - masterVoff;
    guard0p->col = guard0p->bigCol - masterHoff;

    guard1p->prevAniState = guard1p->aniState;
    guard1p->row = guard1p->bigRow - masterVoff;
    guard1p->col = guard1p->bigCol - masterHoff;

    guard2p->prevAniState = guard2p->aniState;
    guard2p->row = guard2p->bigRow - masterVoff;
    guard2p->col = guard2p->bigCol - masterHoff;

    guard3p->prevAniState = guard3p->aniState;
    guard3p->row = guard3p->bigRow - masterVoff;
    guard3p->col = guard3p->bigCol - masterHoff;

    guard4p->prevAniState = guard4p->aniState;
    guard4p->row = guard4p->bigRow - masterVoff;
    guard4p->col = guard4p->bigCol - masterHoff;

    guard5p->prevAniState = guard5p->aniState;
    guard5p->row = guard5p->bigRow - masterVoff;
    guard5p->col = guard5p->bigCol - masterHoff;


    spotLight0ptr->row = spotLight0ptr->bigRow - masterVoff;
    spotLight0ptr->col = spotLight0ptr->bigCol - masterHoff;

    spotLight1ptr->row = spotLight1ptr->bigRow - masterVoff;
    spotLight1ptr->col = spotLight1ptr->bigCol - masterHoff;

    spotLight2ptr->row = spotLight2ptr->bigRow - masterVoff;
    spotLight2ptr->col = spotLight2ptr->bigCol - masterHoff;

    spotLight3ptr->row = spotLight3ptr->bigRow - masterVoff;
    spotLight3ptr->col = spotLight3ptr->bigCol - masterHoff;

    spotLight4ptr->row = spotLight4ptr->bigRow - masterVoff;
    spotLight4ptr->col = spotLight4ptr->bigCol - masterHoff;

    spotLight5ptr->row = spotLight5ptr->bigRow - masterVoff;
    spotLight5ptr->col = spotLight5ptr->bigCol - masterHoff;

    spotLight6ptr->row = spotLight6ptr->bigRow - masterVoff;
    spotLight6ptr->col = spotLight6ptr->bigCol - masterHoff;

    spotLight7ptr->row = spotLight7ptr->bigRow - masterVoff;
    spotLight7ptr->col = spotLight7ptr->bigCol - masterHoff;

    spotLight8ptr->row = spotLight8ptr->bigRow - masterVoff;
    spotLight8ptr->col = spotLight8ptr->bigCol - masterHoff;

    spotLight9ptr->row = spotLight9ptr->bigRow - masterVoff;
    spotLight9ptr->col = spotLight9ptr->bigCol - masterHoff;

    // spotLight10ptr->row = spotLight10ptr->bigRow - masterVoff;
    // spotLight10ptr->col = spotLight10ptr->bigCol - masterHoff;

    // updateEnemyTracking(guard0Coords, guard0p);
    // updateEnemyTracking(spotLight0Coords, spotLight0ptr); //this I don't need

    spotLightMovement(spotLight0ptr);
    spotLightMovement(spotLight1ptr);
    spotLightMovement(spotLight2ptr);
    spotLightMovement(spotLight3ptr);
    spotLightMovement(spotLight4ptr);
    spotLightMovement(spotLight5ptr);
    spotLightMovement(spotLight6ptr);
    spotLightMovement(spotLight7ptr);
    spotLightMovement(spotLight8ptr);
    spotLightMovement(spotLight9ptr);
    spotLightMovement(spotLight10ptr);


    spotLightSpriteWork(spotLight0ptr);
    spotLightSpriteWork(spotLight1ptr);
    spotLightSpriteWork(spotLight2ptr);
    spotLightSpriteWork(spotLight3ptr);
    spotLightSpriteWork(spotLight4ptr);
    spotLightSpriteWork(spotLight5ptr);
    spotLightSpriteWork(spotLight6ptr);
    spotLightSpriteWork(spotLight7ptr);
    spotLightSpriteWork(spotLight8ptr);
    spotLightSpriteWork(spotLight9ptr);
    // spotLightSpriteWork(spotLight10ptr); come back for the rebel later

    enemyAI(guard0p);
    enemyAI(guard1p);
    enemyAI(guard2p);
    enemyAI(guard3p);
    enemyAI(guard4p);
    enemyAI(guard5p);
    // enemyAnimation(guard0p);
    // enemyAnimation(guard1p);
    // enemyAnimation(guard2p);
    // enemyAnimation(guard3p);
    // enemyAnimation(guard4p);
    // enemyAnimation(guard5p);
    
    enemySpriteWork(guard0p);
    enemySpriteWork(guard1p);
    enemySpriteWork(guard2p);
    enemySpriteWork(guard3p);
    enemySpriteWork(guard4p);
    enemySpriteWork(guard5p);

}

//** GUARDS ==================================================
void terminatePlayer(ENEMY* gp)
{
    if (!gp->dead)
    {
        gp->reactionTime = 1;
        gp->health = 3;
        gp->aniState = GUARDAGGRO;
    }
}

void enemyAI(ENEMY *gp)
{
    //two AI states (aggro and non-agro)
    //this is temporary gp->aniState == GUARDAGGRO!
    //If not not on screen
    if (gp->onScreen == ATTR0_HIDE && gp->aniState != GUARDAGGRO) return;

    if (gp->aniState == GUARDDOCILE)
    {
    	walkCounter++;
        switch(gp->direction)
        {

            case ENEMY_UP:
                // guard1p->bigRow -= guard1p->rdel;
                // if (guard1p->bigRow < 10)
                // {
                //     guard1p->bigRow = 10;
                //     guard1p->direction = ENEMY_DOWN;
                // }
                break;

            case ENEMY_DOWN:
                // guard1p->bigRow += guard1p->rdel;
                // if (guard1p->bigRow > 160 - guard1p->height)
                // {
                //     guard1p->bigRow = 160 - guard1p->height;
                //     guard1p->direction = ENEMY_UP;
                // }
                break;

            case ENEMY_LEFT:
                enemyAnimation(gp);
                gp->hflip = ATTR1_HFLIPFALSE;
                if (walkCounter%gp->lag == 0) gp->bigCol--;   
                // guard1p->masterCol -= guard1p->cdel;

                //each guard will have a "range" they patrol
                if (gp->bigCol < gp->initCol - gp->range)//less than a ceratin threshold
                {
                    gp->bigCol = gp->initCol - gp->range;
                    gp->direction = ENEMY_RIGHT;
                }
                break;

            case ENEMY_RIGHT:
                enemyAnimation(gp);
                gp->hflip = ATTR1_HFLIP;
                if (walkCounter%gp->lag == 0) gp->bigCol++;
                // guard1p->masterCol += guard1p->cdel;

                if (gp->bigCol > gp->initCol + gp->range)
                {
                    gp->bigCol = gp->initCol + gp->range;
                    gp->direction = ENEMY_LEFT;
                }
                break;
        }

	    gp->moveCount++;
	    if (gp->moveCount == 100)//temp
	    {
	        gp->direction = rand()%4;
            gp->currFrame = 0;
	        gp->moveCount = 0;
	    }

    }
    if (gp->aniState == GUARDAGGRO)
    {
        //what if I put the health here??
        rageCounter++;
        if (rageCounter%gp->reactionTime == 0)
        {
            gp->raging = TRUE;
        }
        if (gp->raging)
        {
            if(!ryup->recovering) //give chase
            {
                if (gp->bigRow > (ryup->bigRow-16))
                {
                    gp->bigRow--;
                    enemyAnimation(gp);

                }    
                else if (gp->bigRow == ryup->bigRow)  
                {
                    gp->bigRow = ryup->bigRow;
                    gp->currFrame = 0;

                }   
                else if (gp->bigRow < (ryup->bigRow-16))  
                {
                    gp->bigRow++;
                    enemyAnimation(gp);
                } 

                //horizontal homing
                if (gp->bigCol > ryup->bigCol)
                {
                    gp->hflip = ATTR1_HFLIPFALSE;
                    gp->bigCol--;
                    enemyAnimation(gp);
                }   
                else if (gp->bigCol == ryup->bigCol)
                {
                    gp->bigCol = ryup->bigCol;
                    gp->currFrame = 0;
                }
                else if (gp->bigCol < ryup->bigCol)
                {
                    gp->hflip = ATTR1_HFLIP;
                    if (gp->bigCol < (ryup->bigCol-58))
                    {
                        gp->bigCol++;
                        enemyAnimation(gp);
                    }
                }
            }
        }
        else //not raging
        {
            enemyAnimation(gp);
            gp->currFrame = 0;
        }
        // gp->currFrame = 0;
        // if ((gp->bigCol == ryup->bigCol) && (gp->bigRow == ryup->bigRow))


    }
}

void enemyAnimation(ENEMY *gp)
{
    //if its an Enemy pointer than I want to animate the
    //enemy in the same way
    //Not on the screen we don't need to animate it now do we?
    // if (gp->onScreen == ATTR0_REGULAR)
    // {
    gp->aniCounter++;

    if (gp->aniState == GUARDDOCILE)
    {
        gp->height = 40;
        gp->width = 32;
        // guard1p->aniCounter++;
        if (gp->aniCounter%20 == 0)
        {
        	gp->currFrame++;
        	gp->currFrame = (gp->currFrame > 2)? 0: gp->currFrame;
        }
    }    

    else if (gp->aniState == GUARDAGGRO)
    {
        gp->height = 40;
        gp->width = 48;
        // guard1p->aniCounter++;
        if (gp->aniCounter%10 == 0)
        {
            gp->currFrame++;
            gp->currFrame = (gp->currFrame > 2)? 0: gp->currFrame;
        }
    } 

}

//shadowOAM for enemies
void enemySpriteWork(ENEMY *gp)
{
    //switch statement for different guards
    if (gp->dead)
    {
        // spriteColorRestore16(1, spritersSheetPal);
        return;
    }
    gp->onScreen = (gp->row < 160 && gp-> row > 0 && gp->col < 240 && gp->col > 0-gp->width)? ATTR0_REGULAR : ATTR0_HIDE;

    if (gp->aniState == GUARDDOCILE)
    {
    	switch(gp->eNum)
        {
            //any guard can take up to a max of three sprites to draw which is why an extra
            //place is left inbetween guards in the OAM
            case GUARD0:
                //currFrame 0
                (shadowOAMptr+3)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+3)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+3)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                // (shadowOAMptr+2)->attr2 = SPRITEOFFSET16(20,0)
                //the problem is that currFrame and aniState are 0,0

                (shadowOAMptr+4)->attr0 = ((gp->row+32) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+4)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+4)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+4, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                //keep one extra spot for when he gets pissed        
                break;

            case GUARD1:
                //determine wheter position is onScreen or not and the draw/erase
                (shadowOAMptr+6)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+6)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+6)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                (shadowOAMptr+7)->attr0 = ((gp->row+32) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+7)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+7)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+4, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                //keep extra
                break;

            case GUARD2:
                (shadowOAMptr+9)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+9)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+9)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                (shadowOAMptr+10)->attr0 = ((gp->row+32) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+10)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+10)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+4, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                //keep extra for aggro
                break;

            case GUARD3:
                (shadowOAMptr+12)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+12)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+12)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                (shadowOAMptr+13)->attr0 = ((gp->row+32) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+13)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+13)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+4, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;

            case GUARD4:
                (shadowOAMptr+15)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+15)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+15)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                (shadowOAMptr+16)->attr0 = ((gp->row+32) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+16)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+16)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+4, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;
            
            case GUARD5:
                (shadowOAMptr+18)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+18)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+18)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                (shadowOAMptr+19)->attr0 = ((gp->row+32) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+19)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+19)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+4, gp->aniState*11)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;
        }
        
    }
    // only if the guard is docile will you not see him again.


    else if (gp->aniState == GUARDAGGRO)
    {
        switch(gp->eNum)
        {
            //any guard can take up to a max of three sprites to draw which is why an extra
            //place is left inbetween guards in the OAM
            case GUARD0:
                //currFrame 0
                (shadowOAMptr+3)->attr0 = ((gp->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+3)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+3)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+1, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //top of dome
                (shadowOAMptr+4)->attr0 = ((gp->row) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+4)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+4)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //end of staff
                (shadowOAMptr+5)->attr0 = ((gp->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                if (gp->hflip == ATTR1_HFLIP)
                {
                    (shadowOAMptr+5)->attr1 = ((gp->col+48) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+5)->attr1 = ((gp->col) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                (shadowOAMptr+5)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+3, gp->aniState*8+2)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;

            case GUARD1:
            //6, 7, 8
                (shadowOAMptr+6)->attr0 = ((gp->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+6)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+6)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+1, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //top of dome
                (shadowOAMptr+7)->attr0 = ((gp->row) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+7)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+7)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //end of staff
                (shadowOAMptr+8)->attr0 = ((gp->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                if (gp->hflip == ATTR1_HFLIP)
                {
                    (shadowOAMptr+8)->attr1 = ((gp->col+48) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+8)->attr1 = ((gp->col) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                (shadowOAMptr+8)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+3, gp->aniState*8+2)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;

            case GUARD2:
            //9, 10, 11
                (shadowOAMptr+9)->attr0 = ((gp->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+9)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+9)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+1, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //top of dome
                (shadowOAMptr+10)->attr0 = ((gp->row) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+10)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+10)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //end of staff
                (shadowOAMptr+11)->attr0 = ((gp->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                if (gp->hflip == ATTR1_HFLIP)
                {
                    (shadowOAMptr+11)->attr1 = ((gp->col+48) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+11)->attr1 = ((gp->col) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                (shadowOAMptr+11)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+3, gp->aniState*8+2)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;

            case GUARD3:
            //12, 13, 14
                (shadowOAMptr+12)->attr0 = ((gp->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+12)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+12)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+1, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //top of dome
                (shadowOAMptr+13)->attr0 = ((gp->row) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+13)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+13)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //end of staff
                (shadowOAMptr+14)->attr0 = ((gp->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                if (gp->hflip == ATTR1_HFLIP)
                {
                    (shadowOAMptr+14)->attr1 = ((gp->col+48) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+14)->attr1 = ((gp->col) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                (shadowOAMptr+14)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+3, gp->aniState*8+2)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;

            case GUARD4:
            //15, 16, 17
                (shadowOAMptr+15)->attr0 = ((gp->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+15)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+15)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+1, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //top of dome
                (shadowOAMptr+16)->attr0 = ((gp->row) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+16)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+16)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //end of staff
                (shadowOAMptr+17)->attr0 = ((gp->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                if (gp->hflip == ATTR1_HFLIP)
                {
                    (shadowOAMptr+17)->attr1 = ((gp->col+48) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+17)->attr1 = ((gp->col) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                (shadowOAMptr+17)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+3, gp->aniState*8+2)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;

            case GUARD5:
            //18, 19, 20
                (shadowOAMptr+18)->attr0 = ((gp->row+8) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+18)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                (shadowOAMptr+18)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+1, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //top of dome
                (shadowOAMptr+19)->attr0 = ((gp->row) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                (shadowOAMptr+19)->attr1 = ((gp->col+16) & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                (shadowOAMptr+19)->attr2 = (SPRITEOFFSET16(gp->currFrame*5, gp->aniState*8+4)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);

                //end of staff
                (shadowOAMptr+20)->attr0 = ((gp->row+24) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                if (gp->hflip == ATTR1_HFLIP)
                {
                    (shadowOAMptr+20)->attr1 = ((gp->col+48) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+20)->attr1 = ((gp->col) & COLMASK) | ATTR1_SIZE8 | gp->hflip;
                }
                (shadowOAMptr+20)->attr2 = (SPRITEOFFSET16(gp->currFrame*5+3, gp->aniState*8+2)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                break;
        }
    }

    else if (gp->aniState == GUARDDEFEAT)
    {
        deathCounter++;
        switch (gp->eNum)
        {   
            case GUARD0:
                //this will be when the guard's health is 0
                if (gp->health == 0)
                {
                    spriteColorChange16(1, BLOODRED);
                    
                    if (gp->raging) 
                    {
                        if (!gp->dead) (shadowOAMptr+3)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+3)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+3)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        if (!gp->dead) (shadowOAMptr+4)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+4)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+4)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                        (shadowOAMptr+5)->attr0 = ATTR0_HIDE;

                    }
                    else //docile unsuspecting victim
                    {
                        if (!gp->dead) (shadowOAMptr+4)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP| gp->onScreen;
                        (shadowOAMptr+3)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+3)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+4)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+4)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    } 

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+3)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+4)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+5)->attr0 = ATTR0_HIDE;
                        gp->dead = TRUE;
                        updateOAM();
                        for (int i=0; i < 30; i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+3)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+3)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                    if (gp->raging) (shadowOAMptr+3)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    else (shadowOAMptr+3)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    
                    (shadowOAMptr+4)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+4)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                    
                    if (gp->raging)
                    {
                        (shadowOAMptr+4)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+5)->attr0 = ATTR0_HIDE;
                    }
                    else{
                        (shadowOAMptr+4)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    }  


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = FALSE;
                    }
                }   
                break;

            case GUARD1:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, BLOODRED);
                    
                    if (gp->raging) 
                    {
                        if (!gp->dead) (shadowOAMptr+6)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+6)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+6)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        if (!gp->dead) (shadowOAMptr+7)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+7)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+7)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                        (shadowOAMptr+8)->attr0 = ATTR0_HIDE;

                    }
                    else //docile unsuspecting victim
                    {
                        if (!gp->dead) (shadowOAMptr+7)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP| gp->onScreen;
                        (shadowOAMptr+6)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+6)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+7)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+7)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    } 

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+6)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+7)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+8)->attr0 = ATTR0_HIDE;
                        gp->dead = TRUE;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+6)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+6)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                    if (gp->raging) (shadowOAMptr+6)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    else (shadowOAMptr+6)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    
                    (shadowOAMptr+7)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+7)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                    
                    if (gp->raging)
                    {
                        (shadowOAMptr+7)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+8)->attr0 = ATTR0_HIDE;
                    }
                    else{
                        (shadowOAMptr+7)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    }  


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = FALSE;
                    }
                }
                break;

            case GUARD2:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, BLOODRED);
                    
                    if (gp->raging) 
                    {
                        if (!gp->dead) (shadowOAMptr+9)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+9)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+9)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        if (!gp->dead) (shadowOAMptr+10)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+10)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+10)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                        (shadowOAMptr+11)->attr0 = ATTR0_HIDE;

                    }
                    else //docile unsuspecting victim
                    {
                        if (!gp->dead) (shadowOAMptr+10)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP| gp->onScreen;
                        (shadowOAMptr+9)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+9)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+10)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+10)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    } 

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+9)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+10)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+11)->attr0 = ATTR0_HIDE;
                        gp->dead = TRUE;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+9)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+9)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                    if (gp->raging) (shadowOAMptr+9)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    else (shadowOAMptr+9)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    
                    (shadowOAMptr+10)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+10)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                    
                    if (gp->raging)
                    {
                        (shadowOAMptr+10)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+11)->attr0 = ATTR0_HIDE;
                    }
                    else{
                        (shadowOAMptr+10)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    }  


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = FALSE;
                    }
                }
                break;

            case GUARD3:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, BLOODRED);
                    
                    if (gp->raging) 
                    {
                        if (!gp->dead) (shadowOAMptr+12)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+12)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+12)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        if (!gp->dead) (shadowOAMptr+13)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+13)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+13)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                        (shadowOAMptr+14)->attr0 = ATTR0_HIDE;

                    }
                    else //docile unsuspecting victim
                    {
                        if (!gp->dead) (shadowOAMptr+13)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP| gp->onScreen;
                        (shadowOAMptr+12)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+12)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1);
                        (shadowOAMptr+13)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+13)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    } 

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+12)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+13)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+14)->attr0 = ATTR0_HIDE;
                        gp->dead = TRUE;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+12)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+12)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                    if (gp->raging) (shadowOAMptr+12)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    else (shadowOAMptr+12)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    
                    (shadowOAMptr+13)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+13)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                    
                    if (gp->raging)
                    {
                        (shadowOAMptr+13)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+14)->attr0 = ATTR0_HIDE;
                    }
                    else{
                        (shadowOAMptr+13)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    }  


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = FALSE;
                    }
                }
                break;

            case GUARD4:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, BLOODRED);
                    
                    if (gp->raging) 
                    {
                        if (!gp->dead) (shadowOAMptr+15)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+15)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+15)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        if (!gp->dead) (shadowOAMptr+16)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+16)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+16)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                        (shadowOAMptr+17)->attr0 = ATTR0_HIDE;

                    }
                    else //docile unsuspecting victim
                    {
                        if (!gp->dead) (shadowOAMptr+16)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP| gp->onScreen;
                        (shadowOAMptr+15)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+15)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+16)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+16)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    } 

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+15)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+16)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+17)->attr0 = ATTR0_HIDE;
                        gp->dead = TRUE;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+15)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+15)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                    if (gp->raging) (shadowOAMptr+15)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    else (shadowOAMptr+15)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    
                    (shadowOAMptr+16)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+16)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                    
                    if (gp->raging)
                    {
                        (shadowOAMptr+16)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+17)->attr0 = ATTR0_HIDE;
                    }
                    else{
                        (shadowOAMptr+16)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    }  


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = FALSE;
                    }
                }
                break;

            case GUARD5:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, BLOODRED);
                    
                    if (gp->raging) 
                    {
                        if (!gp->dead) (shadowOAMptr+18)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+18)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+18)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        if (!gp->dead) (shadowOAMptr+19)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                        (shadowOAMptr+19)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+19)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                        (shadowOAMptr+20)->attr0 = ATTR0_HIDE;

                    }
                    else //docile unsuspecting victim
                    {
                        if (!gp->dead) (shadowOAMptr+19)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP| gp->onScreen;
                        (shadowOAMptr+18)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                        (shadowOAMptr+18)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+19)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                        (shadowOAMptr+19)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    } 

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+18)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+19)->attr0 = ATTR0_HIDE;
                        (shadowOAMptr+20)->attr0 = ATTR0_HIDE;
                        gp->dead = TRUE;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+18)->attr0 = (gp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+18)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE32 | gp->hflip;
                    if (gp->raging) (shadowOAMptr+18)->attr2 = (SPRITEOFFSET16(15, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    else (shadowOAMptr+18)->attr2 = (SPRITEOFFSET16(15, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                    
                    (shadowOAMptr+19)->attr0 = ((gp->row+40) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | gp->onScreen;
                    (shadowOAMptr+19)->attr1 = (gp->col & COLMASK) | ATTR1_SIZE16 | gp->hflip;
                    
                    if (gp->raging)
                    {
                        (shadowOAMptr+19)->attr2 = (SPRITEOFFSET16(15+4, 28)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);
                        (shadowOAMptr+20)->attr0 = ATTR0_HIDE;
                    }
                    else{
                        (shadowOAMptr+19)->attr2 = (SPRITEOFFSET16(15+4, 22)) | ATTR2_PALBANK(1) | PRIORITY(gp->layer);               
                    }  

                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = FALSE;
                    }
                }
                break;
        }
    }

}

// ** Spotlight ====================================
void spotLightMovement(ENEMY *lp)
{
    scanCounter++;
    if (lp->onScreen == ATTR0_HIDE) return; //no work to be done

    switch(lp->direction)
    {
            case ENEMY_UP:
                if (scanCounter%lp->lag == 0)
                {
                    if (lp->bigRow > lp->initRow)
                    {
                        lp->bigRow--;
                    }
                    else
                    {
                        lp->bigRow = lp->initRow;
                        lp->direction = ENEMY_DOWN;
                    }
                }
                break;

            case ENEMY_DOWN:
                if (scanCounter%lp->lag == 0)
                {
                    if (lp->bigRow < lp->initRow+lp->range)
                    {
                        lp->bigRow++;
                    }
                    else
                    {
                        lp->bigRow = lp->initRow+lp->range;
                        lp->direction = ENEMY_UP;
                    }
                }
                break;

            case ENEMY_LEFT:
                if (scanCounter%lp->lag == 0)
                {
                    if (lp->bigCol > lp->initCol) 
                    {
                        lp->bigCol--;
                    }
                    else
                    {
                        lp->bigCol = lp->initCol;
                        lp->direction = ENEMY_RIGHT;
                    }
                }
                break;

            case ENEMY_RIGHT:
                if (scanCounter%lp->lag == 0)
                {
                    if (lp->bigCol < lp->initCol + lp->range) 
                    {
                        lp->bigCol++;
                    }
                    else
                    {
                        lp->bigCol = lp->initCol+lp->range;
                        lp->direction = ENEMY_LEFT;
                    }
                }
                break;

            // case ENEMY_STOP:
            //     //do nothing
            //     break;
    } // end switch

    // if (lp->bigRow < lp->initRow+lp->range)
    // {
    //     lp->bigRow++;
    // }
    // else
    // {
    //     // lp->bigRow--;
    // } 

}

void spotLightSpriteWork(ENEMY *lp)
{
    // (shadowOAMptr+35)->attr0 = (smallLightptr->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;
    // (shadowOAMptr+35)->attr1 = (smallLightptr->col & COLMASK) | ATTR1_SIZE16;
    // (shadowOAMptr+35)->attr2 = (SPRITEOFFSET16(18,0)) | ATTR2_PALBANK(2);

/**debug flashing between blend and no blend**/    
    // if (BUTTON_HELD(BUTTON_SELECT))
    // {
    //  (shadowOAMptr+36)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP;

    // }
    // else
    // {
    //     (shadowOAMptr+36)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND;
    // }

    // if (lp->row < 160 && lp-> row > 0 && lp->col < 240 && lp->col > 0-lp->width) lp->onScreen = ATTR0_REGULAR;
    // else lp->onScreen = ATTR0_HIDE;
    lp->onScreen = (lp->row < 160 && lp-> row > 0 && lp->col < 240 && lp->col > 0-lp->width)? ATTR0_REGULAR : ATTR0_HIDE;

    switch (lp->eNum)
    {
        case LIGHT0:
            (shadowOAMptr+36)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+36)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+36)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+37)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+37)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+37)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+38)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+38)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+38)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+39)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+39)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+39)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT1:
            (shadowOAMptr+40)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+40)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+40)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+41)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+41)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+41)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+42)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+42)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+42)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+43)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+43)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+43)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT2:
            (shadowOAMptr+44)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+44)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+44)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+45)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+45)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+45)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+46)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+46)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+46)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+47)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+47)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+47)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT3:
            (shadowOAMptr+48)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+48)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+48)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+49)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+49)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+49)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+50)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+50)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+50)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+51)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+51)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+51)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT4:
            (shadowOAMptr+52)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+52)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+52)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+53)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+53)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+53)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+54)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+54)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+54)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+55)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+55)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+55)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT5:
            (shadowOAMptr+56)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+56)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+56)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+57)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+57)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+57)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+58)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+58)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+58)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+59)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+59)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+59)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT6:
            (shadowOAMptr+60)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+60)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+60)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+61)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+61)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+61)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+62)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+62)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+62)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+63)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+63)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+63)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT7:
            (shadowOAMptr+64)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+64)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+64)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+65)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+65)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+65)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+66)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+66)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+66)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+67)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+67)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+67)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT8:
            (shadowOAMptr+68)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+68)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+68)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+69)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+69)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+69)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+70)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+70)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+70)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+71)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+71)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+71)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT9:
            (shadowOAMptr+72)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+72)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+72)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+73)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+73)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+73)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+74)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+74)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+74)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+75)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+75)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+75)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);
            break;

        case LIGHT10:
            (shadowOAMptr+76)->attr0 = (lp->row & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+76)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE16;
            (shadowOAMptr+76)->attr2 = (SPRITEOFFSET16(18, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+77)->attr0 = (lp->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+77)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+77)->attr2 = (SPRITEOFFSET16(18, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+78)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+78)->attr1 = (lp->col & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+78)->attr2 = (SPRITEOFFSET16(20, 2)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

            (shadowOAMptr+79)->attr0 = ((lp->row+16) & ROWMASK) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_BLEND | lp->onScreen;
            (shadowOAMptr+79)->attr1 = ((lp->col+16) & COLMASK) | ATTR1_SIZE8;
            (shadowOAMptr+79)->attr2 = (SPRITEOFFSET16(20, 4)) | ATTR2_PALBANK(2) | PRIORITY(lp->layer);

    }

}

// ** MISCELLANOUS =================================================================================

void updateScreenObjs()
{
    //may as well get the fireballs here. i.e I don't know where I want to put them or where makes sense
    //will make an updateScreenobjs()
    //check to see if on screen
    // sop->onScreen = (sop->row < 160 && sop->row > 0 && sop->col < 240 
    //     && sop->col > 0-sop->width)? ATTR0_REGULAR : ATTR0_HIDE;

    fbp0->prevAniState = fbp0->aniState;
    fbp0->row = fbp0->bigRow - masterVoff;
    fbp0->col = fbp0->bigCol - masterHoff;

    fbp1->prevAniState = fbp1->aniState;
    fbp1->row = fbp1->bigRow - masterVoff;
    fbp1->col = fbp1->bigCol - masterHoff;

    screenObjAnimation(fbp0);
    screenObjAnimation(fbp1);

    screenObjSpriteWork(fbp0);
    screenObjSpriteWork(fbp1);
}

void screenObjAnimation(SCREEN_OBJ* sop)
{
    //if not on screen logic
    // if (fbp0->onScreen == ATTR0_HIDE
    //     && fbp1->onScreen == ATTR0_HIDE) return;
    if (sop->onScreen != ATTR0_HIDE)
    {
        sop->aniCounter++;
        if (sop->aniCounter%15 ==0)
        {
            sop->currFrame++;

            sop->currFrame = (sop->currFrame > 1)? 0: sop->currFrame;
        }
    }
}

void screenObjSpriteWork(SCREEN_OBJ* sop)
{
    sop->onScreen = (sop->row < 160 && sop->row > 0 && sop->col < 240 && sop->col > 0-sop->width)? ATTR0_REGULAR : ATTR0_HIDE;
    // if (fbp0->onScreen == ATTR0_HIDE
    //     && fbp1->onScreen == ATTR0_HIDE) return;
    //only if on screen will we actually draw it
    if (sop->onScreen != ATTR0_HIDE)
    {
        switch (sop->type)
        {
            case FIRE0:
                (shadowOAMptr+123)->attr0 = (sop->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
                (shadowOAMptr+123)->attr1 = (sop->col & COLMASK) | ATTR1_SIZE8;
                (shadowOAMptr+123)->attr2 = (SPRITEOFFSET16(sop->aniState+19, sop->currFrame+5)) | PRIORITY(sop->layer) | ATTR2_PALBANK(2);
                break;

            case FIRE1:
                (shadowOAMptr+124)->attr0 = (sop->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
                (shadowOAMptr+124)->attr1 = (sop->col & COLMASK) | ATTR1_SIZE8;
                (shadowOAMptr+124)->attr2 = (SPRITEOFFSET16(sop->aniState+19, sop->currFrame+5)) | PRIORITY(sop->layer) | ATTR2_PALBANK(2);
            
        }
    }
}


void drawPause()
{
	// needs to have highest priority
	(shadowOAMptr+125)->attr0 = (pauseSignptr->row & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
	(shadowOAMptr+125)->attr1 = (pauseSignptr->col & COLMASK) | ATTR1_SIZE32;
	(shadowOAMptr+125)->attr2 = (SPRITEOFFSET16(21, 0)) | PRIORITY(0); // on ryu's palette

	(shadowOAMptr+126)->attr0 = (pauseSignptr->row & ROWMASK) | ATTR0_WIDE | ATTR0_4BPP;
	(shadowOAMptr+126)->attr1 = ((pauseSignptr->col+32) & COLMASK) | ATTR1_SIZE32;
	(shadowOAMptr+126)->attr2 = (SPRITEOFFSET16(21, 4)) | PRIORITY(0);

	(shadowOAMptr+127)->attr0 = (pauseSignptr->row & ROWMASK) | ATTR0_TALL | ATTR0_4BPP;
	(shadowOAMptr+127)->attr1 = ((pauseSignptr->col+64) & COLMASK) | ATTR1_SIZE8;
	(shadowOAMptr+127)->attr2 = (SPRITEOFFSET16(21, 8)) | PRIORITY(0);

    DMANow(3, shadowOAM, OAM, 512);
}

//might not need this function yo.
void erasePause()
{
	(shadowOAMptr+125)->attr0 = ATTR0_HIDE;
	(shadowOAMptr+126)->attr0 = ATTR0_HIDE;
	(shadowOAMptr+127)->attr0 = ATTR0_HIDE;
}

void updateOAM()
{
        //update background registers
		REG_BG0HOFS = bg0hOff;

        REG_BG2HOFS = bg2hOff;
        REG_BG2VOFS = bg2vOff;

        // REG_BG3HOFS = bg3hOff/2;

        //update OAM
        DMANow(3, shadowOAM, OAM, 512);
}
