/**
Header file for the main game, I put
this here so I could call functions 
of main.c from spriters.c "where all the action is"
**/

void initializeGame();
void loadBGTiles(unsigned const short *source, int charBlock, int tileLength);
void loadMapData(unsigned const short *source, int screenBlock, int BGSize);
void loadMapSection(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);
void reloadMap(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);

unsigned int buttons;
unsigned int oldButtons;

enum {STARTSCREEN, INSTRUCTIONSCREEN, GAMESCREEN, PAUSESCREEN, WINSCREEN, LOSESCREEN};

void initGame();

void splash();
void instruction();
void game();
void pause();
void win();
void lose();