#ifndef BACKGROUNDS
#define BACKGROUNDS

extern int sbbX;
extern int sbbY;

void loadBG();
void loadTheBackground(unsigned const short *palette, unsigned const short *sourceTiles, unsigned const short *sourceMap, int charBlock, int screenBlock, int tileLength);
// void loadTheBackground();
void updateBG();
void loadBGTiles(unsigned const short *source, int charBlock, int tileLength);
void loadMapData(unsigned const short *source, int screenBlock, int BGSize);
void loadMapSection(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);
void reloadMap(unsigned const short *source, int sbbX, int sbbY, int sbbWidth, int screenBlock);

#endif