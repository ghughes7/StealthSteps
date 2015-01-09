#ifndef SPRITERS
#define SPRITERS
/***********************************
* Contains all the things related to 
* sprites on the screen.
*
* Structs, functions you name it - its here
* Enemy
* Player
* each respective methods
************************************/
//Number coordinate pairs for each person
//(player, guard, spotlight)
#define NUMCOORDPAIRS 8 //do I still need this??
#define SCREENHMIDDLE 110
#define SCREENLEFT 0
#define SCREENRIGHT 1807

typedef struct 
{
    int x; //row
    int y; //col
    
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
    int size; //don't need this shit
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
    // int isActive;
    int onScreen; //takes on the roel of Active, on the screen doing stuff
    int layer; //used for drawing priorites
    int eNum;
    int lag;//used for counters that slow down enemy sprites
    int isLight; //if its a spotlight its tracking coordinates
    // double radius; //of circle -> no longer using this
    // double angle; //of circle (in degrees) -> or this
    COORD* origin; //of circle -> probably not...
} ENEMY;

typedef struct{
    int row;
    int col;
    int bigRow;
    int bigCol;
    // int masterRow;
    // int masterCol;
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
    // int size;
    int direction;
    int aniCounter;
    int idleCounter;
    int aniState;
    int prevAniState;
    int currFrame;
    int hflip;
    int layer;
    int lag;
    int detectable; //detectable by spotlight
    int stealthy; //Stealth mode is on and activated
    // int targeted; //the guards are coming to f#$@ you up
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
    int type; //fireballs, shuriken selectors you know
	
} SCREEN_OBJ;

void initializeSprites();
void hideSprites(); 
void updatePlayer();
void endGame();
void playerStealthLogic();
// void stealthCoolDown();
void updateEnemies();
void updateOAM();
void buttonDataQuery();
void ghostControls(int button);
void playerAnimation();
void playerSpriteWork();
// void populateGuards();//won't be using anymore proably??
void enemyAI(ENEMY *gp);
void enemyAnimation(ENEMY *gp);
void enemySpriteWork(ENEMY *gp);
void spotLightMovement(ENEMY *lp);
void spotLightSpriteWork(ENEMY *lp);
// int collisionWithGuard(ENEMY *gp); //enemies are square and change state from Docile to Aggro
//ooh maybe now I can use the same collison logic for the spotlight and guards
//yea should be able to its only comparing points after all
void collisionWithEnemy(PLAYER* rp, ENEMY* ep);
void terminatePlayer(ENEMY* gp);
void mapCollisions(COORD* ryuCs[]); // Collision with maps: 1 if withing the bounds of the main map, 2 if grassMap, 0 if no good
void updatePlayerTracking(COORD* cp[]);
void updateEnemyTracking (COORD* cp[], ENEMY* ep);
// void updateSpotLightTracking(COORD* cp[], ENEMY* lp);
void updateScreenObjs();
void screenObjAnimation(SCREEN_OBJ* sop);
void screenObjSpriteWork(SCREEN_OBJ* sop);


void drawPause();
void erasePause(); //*come back and check if I am actually doing this*

// //background stuff
// void loadTheBackground();
// void updateBG();
// void loadBGTiles(unsigned const short *source, int charBlock, int tileLength);
// void loadMapData(unsigned const short *source, int screenBlock, int BGSize);
// void loadMapSection(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);
// void reloadMap(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);

int bg2hOff, bg2vOff;
int bg0hOff;
int masterHoff, masterVoff;

//could possilby make shurkien instead
// typedef struct{
//     int row;
//     int col;
//     int size;
//     int rVel;
//     u16 color;
//     int active;
// } BULLET;

#endif
