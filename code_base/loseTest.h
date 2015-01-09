
//{{BLOCK(loseTest)

//======================================================================
//
//	loseTest, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 91 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2912 + 2048 = 5472
//
//	Time-stamp: 2014-12-01, 02:45:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSETEST_H
#define GRIT_LOSETEST_H

#define loseTestTilesLen 2912
extern const unsigned short loseTestTiles[1456];

#define loseTestMapLen 2048
extern const unsigned short loseTestMap[1024];

#define loseTestPalLen 512
extern const unsigned short loseTestPal[256];

#endif // GRIT_LOSETEST_H

//}}BLOCK(loseTest)
