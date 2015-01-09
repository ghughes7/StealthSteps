# 1 "spriters.c"
# 1 "<command-line>"
# 1 "spriters.c"





# 1 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 16 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/4.8.2/include/stddef.h" 1 3 4
# 212 "/opt/devkitARM/lib/gcc/arm-none-eabi/4.8.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 324 "/opt/devkitARM/lib/gcc/arm-none-eabi/4.8.2/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/4.8.2/include/stddef.h" 1 3 4
# 147 "/opt/devkitARM/lib/gcc/arm-none-eabi/4.8.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 12 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3






# 1 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 27 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
# 37 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;
typedef short unsigned int __uint16_t;
# 55 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;
typedef long unsigned int __uint32_t;
# 77 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;
typedef long long unsigned int __uint64_t;
# 104 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;
typedef unsigned char __uint_least8_t;
# 126 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;
typedef short unsigned int __uint_least16_t;
# 144 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;
typedef long unsigned int __uint_least32_t;
# 158 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;
typedef long long unsigned int __uint_least64_t;
# 168 "/opt/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 8 "/opt/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3
# 13 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long _off_t;



typedef int __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 67 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitARM/lib/gcc/arm-none-eabi/4.8.2/include/stddef.h" 1 3 4
# 353 "/opt/devkitARM/lib/gcc/arm-none-eabi/4.8.2/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "/opt/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 16 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 91 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 115 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 179 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 762 "/opt/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 19 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 20 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 28 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;




typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *__restrict, const char *__restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *__restrict, const char *__restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *__restrict, const char *__restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *__restrict, const char *__restrict, size_t, _mbstate_t *);
size_t wcstombs (char *__restrict, const wchar_t *__restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *__restrict, const wchar_t *__restrict, size_t, _mbstate_t *);
# 123 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;




void srand (unsigned __seed);
double strtod (const char *__restrict __n, char **__restrict __end_PTR);
double _strtod_r (struct _reent *,const char *__restrict __n, char **__restrict __end_PTR);

float strtof (const char *__restrict __n, char **__restrict __end_PTR);







long strtol (const char *__restrict __n, char **__restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__restrict __n, char **__restrict __end_PTR, int __base);
unsigned long strtoul (const char *__restrict __n, char **__restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__restrict __n, char **__restrict __end_PTR, int __base);

int system (const char *__string);
# 198 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long strtoll (const char *__restrict __n, char **__restrict __end_PTR, int __base);





unsigned long long strtoull (const char *__restrict __n, char **__restrict __end_PTR, int __base);
# 221 "/opt/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);




extern long double strtold (const char *__restrict, char **__restrict);




# 7 "spriters.c" 2
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
# 8 "spriters.c" 2
# 1 "spritersSheet.h" 1
# 21 "spritersSheet.h"
extern const unsigned short spritersSheetTiles[16384];


extern const unsigned short spritersSheetPal[256];
# 9 "spriters.c" 2
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
# 10 "spriters.c" 2

# 1 "sound.h" 1
# 9 "sound.h"
void muteSound();
void unMuteSound();
void stopSound();
void pauseSound();
void unPauseSound();

void setUpInterrupts();
void interruptHandler();

void setUpSounds();
void playSoundA(const unsigned char* sound, int length, int frequency);
void playSoundB(const unsigned char* sound, int length, int frequency);


typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
} SOUND;
# 12 "spriters.c" 2
# 1 "main.h" 1






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
# 13 "spriters.c" 2

# 1 "mainCollisionMap.h" 1
# 20 "mainCollisionMap.h"
extern const unsigned short mainCollisionMapBitmap[327680];
# 15 "spriters.c" 2


# 1 "bg0_grass.h" 1
# 22 "bg0_grass.h"
extern const unsigned short bg0_grassTiles[912];


extern const unsigned short bg0_grassMap[8192];


extern const unsigned short bg0_grassPal[256];
# 18 "spriters.c" 2
# 1 "bg1_edoTown.h" 1
# 22 "bg1_edoTown.h"
extern const unsigned short bg1_edoTownTiles[7568];


extern const unsigned short bg1_edoTownMap[8192];


extern const unsigned short bg1_edoTownPal[256];
# 19 "spriters.c" 2


# 1 "slashSFX.h" 1
# 20 "slashSFX.h"
extern const unsigned char slashSFX[7378];
# 22 "spriters.c" 2

PLAYER ryu;
PLAYER *ryup = &ryu;
COORD *ryuCoords[8];



COORD ryuCoord1;
COORD ryuCoord2;
COORD ryuCoord3;
COORD ryuCoord4;
COORD ryuCoord5;
COORD ryuCoord6;
COORD ryuCoord7;
COORD ryuCoord8;


COORD *ryuCP1 = &ryuCoord1;
COORD *ryuCP2 = &ryuCoord2;
COORD *ryuCP3 = &ryuCoord3;
COORD *ryuCP4 = &ryuCoord4;
COORD *ryuCP5 = &ryuCoord5;
COORD *ryuCP6 = &ryuCoord6;
COORD *ryuCP7 = &ryuCoord7;
COORD *ryuCP8 = &ryuCoord8;


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

OBJ_ATTR shadowOAM[128];
OBJ_ATTR *shadowOAMptr = shadowOAM;

SCREEN_OBJ pauseSign;
SCREEN_OBJ *pauseSignptr = &pauseSign;

SCREEN_OBJ fireball0;
SCREEN_OBJ* fbp0 = &fireball0;

SCREEN_OBJ fireball1;
SCREEN_OBJ* fbp1 = &fireball1;



enum {RYUMOVE, CROUCHSLASH, ROLL, RYUHIT, RYUDIE, RYUIDLE};
enum {GUARDDOCILE=2, GUARDAGGRO, GUARDDEFEAT};
enum {ENEMY_UP, ENEMY_DOWN, ENEMY_LEFT, ENEMY_RIGHT};
enum {GUARD0, GUARD1, GUARD2, GUARD3, GUARD4, GUARD5};
enum {LIGHT0, LIGHT1, LIGHT2, LIGHT3, LIGHT4, LIGHT5, LIGHT6, LIGHT7, LIGHT8, LIGHT9, LIGHT10};
enum {FIRE0, FIRE1};


int ryuMoveCounter = 0;
int stealthDuration = 500;
int coolDown = 1000;
int stealthFade = 0;
int reverseFade = 0;
int hidden = 0;
int stealthRecovered = 1;


int walkCounter = 0;
int deathCounter = 0;
int rageCounter = 0;


int scanCounter = 0;
int flashLight = 0;


int aPress = 0;
int bPress = 0;
int rPress = 0;
int blend = 0;
int cheatON = 0;


int whiteCount = 0;
int modoruCount = 0;
int blackCount = 0;


int grandChamp = 0;

void initializeSprites(){


    ryup->width = 16;
    ryup->height = 32;
    ryup->rdel = 1;
    ryup->cdel = 1;

    ryup->row = 160/2;
    ryup->col = 240/2-ryup->height/2 - 50;
    ryup->health = 3;
    ryup->dead = 0;
    ryup->aniCounter = 0;
    ryup->currFrame = 0;
    ryup->hflip = (0 << 12);
    ryup->layer = 3;
    ryup->lag = 1;
    ryup->detectable = 1;
    ryup->stealthy = 0;

    ryup->aniState = RYUIDLE;


    ryup->rightGawa = ryup->bigCol + ryup->width;
    ryup->bottomGawa = ryup->bigRow + ryup->height;
# 192 "spriters.c"
    ryuCoords[0] = ryuCP1;
    ryuCoords[1] = ryuCP2;
    ryuCoords[2] = ryuCP3;
    ryuCoords[3] = ryuCP4;
    ryuCoords[4] = ryuCP5;
    ryuCoords[5] = ryuCP6;
    ryuCoords[6] = ryuCP7;
    ryuCoords[7] = ryuCP8;

    updatePlayerTracking(ryuCoords);
# 216 "spriters.c"
    guard0p->eNum = GUARD0;
    guard0p->width = 32;
    guard0p->height = 40;
    guard0p->rdel = 1;
    guard0p->cdel = 1;

    guard0p->bigRow = 160/2+guard0p->height/2;
    guard0p->bigCol = 240/2-guard0p->width/2 + 100;

    guard0p->initRow = 160/2+guard0p->height/2;
    guard0p->initCol = 240/2-guard0p->width/2 + 100;

    guard0p->aniCounter = 0;
    guard0p->currFrame = 0;
    guard0p->hflip = (0 << 12);
    guard0p->direction = ENEMY_LEFT;
    guard0p->moveCount = 0;
    guard0p->range = 15;
    guard0p->lag = 2;
    guard0p->reactionTime = 50;
    guard0p->health = 1;
    guard0p->recovering = 0;
    guard0p->raging = 0;
    guard0p->dead = 0;
    guard0p->isLight = 0;
    guard0p->onScreen = (0 << 8);
    guard0p->layer = 3;

    guard0p->aniState = GUARDDOCILE;


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
    guard1p->hflip = (0 << 12);
    guard1p->range = 45;
    guard1p->lag = 2;
    guard1p->reactionTime = 50;
    guard1p->health = 1;
    guard1p->recovering = 0;
    guard1p->raging = 0;
    guard1p->dead = 0;
    guard1p->isLight = 0;
    guard1p->onScreen = (2 << 8);
    guard1p->layer = 3;

    guard1p->aniState = GUARDDOCILE;






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
    guard2p->hflip = (1 << 12);
    guard2p->range = 100;
    guard2p->lag = 2;
    guard2p->reactionTime = 50;
    guard2p->health = 1;
    guard2p->recovering = 0;
    guard2p->raging = 0;
    guard2p->dead = 0;
    guard2p->isLight = 0;
    guard2p->onScreen = (2 << 8);
    guard2p->layer = 3;

    guard2p->aniState = GUARDDOCILE;


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
    guard3p->hflip = (0 << 12);
    guard3p->range = 100;
    guard3p->lag = 2;
    guard3p->reactionTime = 50;
    guard3p->health = 1;
    guard3p->recovering = 0;
    guard3p->raging = 0;
    guard3p->dead = 0;
    guard3p->isLight = 0;
    guard3p->onScreen = (2 << 8);
    guard3p->layer = 3;

    guard3p->aniState = GUARDDOCILE;


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
    guard4p->hflip = (0 << 12);
    guard4p->range = 25;
    guard4p->lag = 2;
    guard4p->reactionTime = 50;
    guard4p->health = 1;
    guard4p->recovering = 0;
    guard4p->raging = 0;
    guard4p->dead = 0;
    guard4p->isLight = 0;
    guard4p->onScreen = (2 << 8);
    guard4p->layer = 3;

    guard4p->aniState = GUARDDOCILE;


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
    guard5p->hflip = (0 << 12);
    guard5p->range = 15;
    guard5p->lag = 2;
    guard5p->reactionTime = 50;
    guard5p->health = 1;
    guard5p->recovering = 0;
    guard5p->raging = 0;
    guard5p->dead = 0;
    guard5p->isLight = 0;
    guard5p->onScreen = (2 << 8);
    guard5p->layer = 3;

    guard5p->aniState = GUARDDOCILE;
# 407 "spriters.c"
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
    spotLight0ptr->isLight = 1;
    spotLight0ptr->onScreen = (0 << 8);


    spotLight0ptr->health = 99;
    spotLight0ptr->layer = 1;




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
    spotLight1ptr->isLight = 1;
    spotLight1ptr->onScreen = (0 << 8);
    spotLight1ptr->health = 99;
    spotLight1ptr->layer = 1;


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
    spotLight2ptr->isLight = 1;
    spotLight2ptr->onScreen = (2 << 8);
    spotLight2ptr->health = 99;
    spotLight2ptr->layer = 1;


    spotLight3ptr->eNum = LIGHT3;
    spotLight3ptr->width = 24;
    spotLight3ptr->height = 24;
    spotLight3ptr->bigRow = 160/2+spotLight3ptr->height/2 -42;
    spotLight3ptr->bigCol = 240/2-spotLight3ptr->width/2 + 540;
    spotLight3ptr->initRow = 160/2+spotLight3ptr->height/2 - 42;
    spotLight3ptr->initCol = 240/2-spotLight3ptr->width/2 + 540;
    spotLight3ptr->range = 80;
    spotLight3ptr->lag = 2;
    spotLight3ptr->direction = ENEMY_UP;
    spotLight3ptr->isLight = 1;
    spotLight3ptr->onScreen = (2 << 8);
    spotLight3ptr->health = 99;
    spotLight3ptr->layer = 1;


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
    spotLight4ptr->isLight = 1;
    spotLight4ptr->onScreen = (2 << 8);
    spotLight4ptr->health = 99;
    spotLight4ptr->layer = 1;


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
    spotLight5ptr->isLight = 1;
    spotLight5ptr->onScreen = (2 << 8);
    spotLight5ptr->health = 99;
    spotLight5ptr->layer = 1;


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
    spotLight6ptr->isLight = 1;
    spotLight6ptr->onScreen = (2 << 8);
    spotLight6ptr->health = 99;
    spotLight6ptr->layer = 1;


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
    spotLight7ptr->isLight = 1;
    spotLight7ptr->onScreen = (2 << 8);
    spotLight7ptr->health = 99;
    spotLight7ptr->layer = 1;


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
    spotLight8ptr->isLight = 1;
    spotLight8ptr->onScreen = (2 << 8);
    spotLight8ptr->health = 99;
    spotLight8ptr->layer = 1;


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
    spotLight9ptr->isLight = 1;
    spotLight9ptr->onScreen = (2 << 8);
    spotLight9ptr->health = 99;
    spotLight9ptr->layer = 1;


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
    spotLight10ptr->isLight = 1;
    spotLight10ptr->onScreen = (2 << 8);
    spotLight10ptr->health = 99;
    spotLight10ptr->layer = 1;


    pauseSignptr->width = 72;
   pauseSignptr->height = 16;
    pauseSignptr->row = 160/2-pauseSignptr->height/2;
    pauseSignptr->col = 240/2-pauseSignptr->width/2;

    fbp0->width = 8;
    fbp0->height = 16;
    fbp0->bigRow = 40;
    fbp0->bigCol = 1896;
    fbp0->aniState = 0;
    fbp0->currFrame = 0;
    fbp0->layer = 4;
    fbp0->type = FIRE0;
    fbp0->onScreen = (2 << 8);

    fbp1->width = 8;
    fbp1->height = 16;
    fbp1->bigRow = 40;
    fbp1->bigCol = 1936;
    fbp1->aniState = 0;
    fbp1->currFrame = 0;
    fbp1->layer = 4;
    fbp1->type = FIRE1;
    fbp1->onScreen = (2 << 8);

    bg0hOff = 0;
    bg2hOff = 0;
    bg2vOff = 0;
 masterHoff = 0;
 masterVoff = 0;
}



void updatePlayerTracking(COORD* cp[])
{
# 641 "spriters.c"
        ryup->rightGawa = ryup->bigCol + ryup->width;
        ryup->bottomGawa = ryup->bigRow + ryup->height;

        cp[0]->x = ryup->bigRow; cp[0]->y = ryup->bigCol;
        cp[1]->x = ryup->bigRow; cp[1]->y = ryup->rightGawa/2;
        cp[2]->x = ryup->bigRow; cp[2]->y = ryup->rightGawa;
        cp[3]->x = ryup->bottomGawa/2; cp[3]->y = ryup->bigCol;
        cp[4]->x = ryup->bottomGawa/2; cp[4]->y = ryup->rightGawa;
        cp[5]->x = ryup->bottomGawa; cp[5]->y = ryup->bigCol;
        cp[6]->x = ryup->bottomGawa; cp[6]->y = ryup->rightGawa/2;
        cp[7]->x = ryup->bottomGawa; cp[7]->y = ryup->rightGawa;

}

void hideSprites()
{
    for (int i = 0; i < 128; i++)
    {
        (shadowOAMptr+i)->attr0 = (2 << 8);
    }

}



void collisionWithEnemy(PLAYER* rp, ENEMY* ep)
{


    if (ep->onScreen == (2 << 8)) return;

    COORD* topLeft = ryuCoords[0];
    COORD* topRight = ryuCoords[2];
    COORD* bottomLeft = ryuCoords[5];
    COORD* bottomRight = ryuCoords[7];

    if (ep->health && !(cheatON))
    {
        int flipCheck = ep->col + ep->width;
        if (ep->hflip == (1 << 12) && ep->aniState && ep->aniState != GUARDDOCILE) flipCheck = ep->col + ep->width + 16;

        if ((rp->col < flipCheck) && (rp->row + rp->height > ep->row)
            && (rp->col + rp->width > ep->col) && (rp->row < ep->row + ep->height))
        {


            int overlapTop = rp->row + rp->height - ep->row;
            int overlapBottom = ep->row + ep->height - rp->row;
            int overlapLeft = rp->col + rp->width - ep->col;
            int overlapRight = ep->col + ep->width - rp->col;


            int mins[] = {overlapTop, overlapBottom, overlapLeft, overlapRight};


            qsort (mins, sizeof(mins)/sizeof(*mins), sizeof(*mins), compare);
            int least = mins[0];

            if (ep->isLight && !rp->stealthy)
            {
                flashLight = 1;

                whiteCount++;
                modoruCount++;
                if (rp->detectable)
                {

                    if (whiteCount < 7)
                    {
                        backgroundFade(((31) | (31)<<5 | (31)<<10));
                    }
                    else if (modoruCount < 14 && modoruCount)
                    {
                        backgroundRestore(bg1_edoTownPal);


                    }
                    else
                    {
                        whiteCount = 0;
                        modoruCount = 0;
                    }

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
# 749 "spriters.c"
                        if (ep->aniState == GUARDDOCILE)
                        {
                            rp->row = ep->row - rp->height;
                        }

                }
                else if (least == overlapBottom)
                {
# 766 "spriters.c"
                        if (ep->aniState == GUARDDOCILE)
                        {
                           ryup->row = ep->row + ep->height;
                        }

                }
                else if (least == overlapLeft)
                {
# 782 "spriters.c"
                        if ((rp->aniState == CROUCHSLASH) && (rp->currFrame >= 4) && (rp->hflip == (0 << 12)))
                        {

                        }

                        else
                        {
                            if (!rp->stealthy)
                            {

                                if (ep->aniState != GUARDAGGRO)
                                {


                                    rp->col = ep->col - rp->width;
                                    ep->aniState = GUARDAGGRO;
                                    ep->health = 2;


                                }
                                else if (ep->aniState == GUARDAGGRO)
                                {

                                    rp->health--;
                                    if (!ryup->health)
                                    {
                                        ryup->dead = 1;

                                    }
                                    rp->recovering = 1;
                                    rp->currFrame = 0;
                                    rp->hflip = (0 << 12);
                                    rp->aniState = RYUHIT;



                                    ep->hflip = (0 << 12);
                                    ep->bigCol += 30;
                                }
                            }
                            else
                            {
                                if (!ep->isLight) rp->col = ep->col - rp->width;
                            }
                        }

                }
                else
                {






                        if ((rp->aniState == CROUCHSLASH) && (rp->currFrame >= 4) && (rp->hflip == (1 << 12)))
                        {

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


                                }
                                else if (ep->aniState == GUARDAGGRO)
                                {
                                    rp->health--;
                                    if (!ryup->health)
                                    {
                                        ryup->dead = 1;

                                    }
                                    rp->recovering = 1;

                                    rp->currFrame = 0;
                                    rp->hflip = (1 << 12);
                                    rp->aniState = RYUHIT;

                                    ep->hflip = (1 << 12);
                                    ep->bigCol -= 30;

                                }
                            }
                            else
                            {
                                if (!ep->isLight) rp->col = ep->col + ep->width;
                            }
                        }

                }
            }
        }
# 897 "spriters.c"
        if (!ep->isLight && rp->aniState == CROUCHSLASH && rp->currFrame >= 4)
        {
            if (rp->hflip == (0 << 12))
            {

                if ((rp->col < ep->col + ep->width) && (rp->row + rp->height > ep->row)
                   && (rp->col + rp->width > ep->col) && (rp->row < ep->row + ep->height))
                {


                    if (!ep->recovering)
                    {
                        ep->health--;

                        ep->recovering = 1;
                    }
                    ep->aniState = GUARDDEFEAT;
                }
            }
            else if (rp->hflip == (1 << 12))
            {

                if ((rp->col - 32 < ep->col + ep->width) && (rp->row + rp->height > ep->row)
                   && (rp->col + rp->width > ep->col) && (rp->row < ep->row + ep->height))
                {

                    if (!ep->recovering)
                    {
                        ep->health--;

                        ep->recovering = 1;
                    }
                    ep->aniState = GUARDDEFEAT;
                }
            }
        }



        if (ryup->aniState == RYUHIT)
        {
            if (ryup->bigCol < 0) ryup->col = 0;

            if (ep->hflip == (1 << 12))
            {
                if (mainCollisionMapBitmap[((topRight->x)*(2048)+(topRight->y))] == ((31) | (31)<<5 | (31)<<10)
                    && mainCollisionMapBitmap[((bottomRight->x)*(2048)+(bottomRight->y))] == ((31) | (31)<<5 | (31)<<10))
                {
                    if (ryup->bigCol + ryup->width > 2045) ryup->col = 240-ryup->width;
                    else
                    {


                        if (ryup->aniCounter%10 == 0)
                        {
                            if (ryup->col > 200 && masterHoff < 1807)
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
                if (mainCollisionMapBitmap[((topLeft->x)*(2048)+(topLeft->y))] == ((31) | (31)<<5 | (31)<<10)
                    && mainCollisionMapBitmap[((bottomLeft->x)*(2048)+(bottomLeft->y))] == ((31) | (31)<<5 | (31)<<10))
                {


                    if (ryup->aniCounter%10 == 0)
                    {
                        if (ryup->col < 16 && masterHoff > 0)
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





void mapCollisions(COORD* ryuCs[])
{
    COORD* topLeft = ryuCs[0];

    COORD* topRight = ryuCs[2];


    COORD* bottomLeft = ryuCs[5];

    COORD* bottomRight = ryuCs[7];


    if (ryup->bigRow > 160-ryup->height-3) ryup->row = 160-ryup->height-3;

    if ((~(*(volatile unsigned int *)0x04000130) & ((1<<5))))
    {
        if (mainCollisionMapBitmap[((topLeft->x)*(2048)+(topLeft->y))] == ((31) | (31)<<5 | (31)<<10)
            && mainCollisionMapBitmap[((bottomLeft->x)*(2048)+(bottomLeft->y))] == ((31) | (31)<<5 | (31)<<10))
        {
            if (ryup->bigCol < 2) ryup->col = 2;

            if (ryup->aniState == CROUCHSLASH)
            {
                if (masterHoff > 0 && ryup->col < 110)
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
                if (masterHoff > 0 && ryup->col < 110)
                {

                    bg0hOff -= ryup->cdel;
                    bg2hOff -= ryup->cdel;
                    masterHoff -= ryup->cdel;
                }
                else
                {
                    if (ryuMoveCounter%ryup->lag == 0) ryup->col--;
                }
            }

        }
        ryup->hflip = (1 << 12);
    }
    else if ((~(*(volatile unsigned int *)0x04000130) & ((1<<4))))
    {
        if (mainCollisionMapBitmap[((topRight->x)*(2048)+(topRight->y))] == ((31) | (31)<<5 | (31)<<10)
            && mainCollisionMapBitmap[((bottomRight->x)*(2048)+(bottomRight->y))] == ((31) | (31)<<5 | (31)<<10))
        {
            if (ryup->bigCol + ryup->width > 2045) ryup->col = 240-ryup->width;
            if (ryup->aniState == CROUCHSLASH)
            {
                if (masterHoff < 1807 && ryup->col > 110)
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

                    {
                        ryup->col++;

                    }
                }
                ryup->hflip = (0 << 12);
            }
            else if (ryup->aniState == RYUMOVE)
            {
                if (masterHoff <= 1807 && ryup->col > 110)
                {
                    bg0hOff += ryup->cdel;
                    bg2hOff += ryup->cdel;
                    masterHoff += ryup->cdel;

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
        ryup->hflip = (0 << 12);
    }
    else if ((~(*(volatile unsigned int *)0x04000130) & ((1<<6))))
    {
        if (mainCollisionMapBitmap[((topLeft->x)*(2048)+(topLeft->y))] == ((31) | (31)<<5 | (31)<<10))
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
    else if ((~(*(volatile unsigned int *)0x04000130) & ((1<<7))))
    {


        if (mainCollisionMapBitmap[((bottomRight->x)*(2048)+(bottomRight->y))] == ((31) | (31)<<5 | (31)<<10))
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
        if (ryup->hflip == (1 << 12))
        {

            if (mainCollisionMapBitmap[((topLeft->x)*(2048)+(topLeft->y))] == ((31) | (31)<<5 | (31)<<10)
                && mainCollisionMapBitmap[((bottomLeft->x)*(2048)+(bottomLeft->y))] == ((31) | (31)<<5 | (31)<<10))
            {
                if (masterHoff > 0 && ryup->col < 110)
                {
                    bg0hOff -= ryup->cdel*2;
                    bg2hOff -= ryup->cdel*2;
                    masterHoff -= ryup->cdel*2;
                }
                else
                {
                    if (ryup->bigCol < 0) ryup->col = 0;
                    else ryup->col -= ryup->cdel*2;
                }
            }
        }
        else
        {
            if (ryup->bigCol + ryup->width > 2045) ryup->col = 240-ryup->width;

            if (mainCollisionMapBitmap[((topRight->x)*(2048)+(topRight->y))] == ((31) | (31)<<5 | (31)<<10)
                && mainCollisionMapBitmap[((bottomRight->x)*(2048)+(bottomRight->y))] == ((31) | (31)<<5 | (31)<<10))
            {

                if (masterHoff < 1807 && ryup->col > 110)
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



void updatePlayer()
{
    ryuMoveCounter++;
    ryup->prevAniState = ryup->aniState;

    ryup->bigRow = ryup->row + masterVoff;
    ryup->bigCol = ryup->col + masterHoff;
# 1213 "spriters.c"
    updatePlayerTracking(ryuCoords);


    ryup->detectable = (ryup->bigRow > 160-ryup->height-5
        && ryup->aniState == CROUCHSLASH
        && !(~(*(volatile unsigned int *)0x04000130) & ((1<<5)))
        && !(~(*(volatile unsigned int *)0x04000130) & ((1<<4)))
        && !(~(*(volatile unsigned int *)0x04000130) & ((1<<6)))
        && !(~(*(volatile unsigned int *)0x04000130) & ((1<<7))))? 0: 1;

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


    endGame();

    buttonDataQuery();
    playerStealthLogic();
    playerAnimation();
    playerSpriteWork();



}

void endGame()
{


    if (ryup->dead)
    {
        blackCount++;



        ryup->layer = 1;
        ryup->aniState = RYUDIE;


        if (blackCount < 220)
        {
            if (ryuMoveCounter%4==0)
            {
                backgroundFade(((0) | (0)<<5 | (0)<<10));
                spriteColorChange16(1, ((0) | (0)<<5 | (0)<<10));
                spriteColorChange16(2, ((0) | (0)<<5 | (0)<<10));
            }
        }
        else
        {

            stopSound();
            lose();
            ryup->dead = 0;
            blackCount = 0;
        }

    }
    if (ryup->bigRow < 40 && ryup->bigCol > 1896 && ryup->bigCol < 1936)
    {
        blackCount++;
        grandChamp = 1;

        if (blackCount < 220)
        {
            if (ryuMoveCounter%4 == 0)
            {
                backgroundFade(((0) | (0)<<5 | (0)<<10));
                spriteColorChange16(1, ((0) | (0)<<5 | (0)<<10));

            }
        }
        else
        {
            stopSound();
            win();
            blackCount = 0;
            grandChamp = 0;
        }
    }
}

void playerStealthLogic()
{
    stealthFade++;
    reverseFade++;

    if (hidden)
    {
        stealthRecovered = 0;
        if (stealthFade%2==0) spriteColorChange16(0, ((0) | (0)<<5 | (0)<<10));

        stealthDuration--;
        if (!stealthDuration)
        {
            hidden = 0;
            blend = !blend;
            coolDown = 1000;
        }
    }

    if (!stealthDuration)
    {
        ryup->stealthy = 0;
        if (reverseFade%5==0) spriteColorRestore16(0, spritersSheetPal);

        coolDown--;
        if (!coolDown)
        {
            stealthDuration = 500;
            stealthRecovered = 1;
        }
    }

}

void ghostControls(int button)
{
    switch (button)
    {
        case (1<<0):

            if ((1<<0) && ryup->aniState != CROUCHSLASH
                && ryup->aniState != ROLL && ryup->aniState != RYUHIT
                && ryup->aniState != RYUDIE)
            {
                ryup->row += 8;
                ryup->aniState = CROUCHSLASH;
                ryup->currFrame = 0;
                aPress = 1;
            }

            else if ((1<<0) && ryup->aniState == CROUCHSLASH
                && ryup->aniState != ROLL && ryup->aniState != RYUHIT
                && ryup->aniState != RYUDIE)
                {
                ryup->row -= 8;
                ryup->aniState = RYUIDLE;
                ryup->currFrame = 0;
                aPress = 0;
                }
            break;

        case (1<<1):

            if ((1<<1) && ryup->aniState == CROUCHSLASH)
            {
                bPress = 1;
            }
            break;

        case (1<<9):
            if ((1<<9) && ryup->aniState != ROLL && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {
                ryup->aniState = ROLL;
                ryup->currFrame = 0;
            }
            break;


        case (1<<8):

            if ((1<<8) && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
                && stealthRecovered)
            {

                ryup->stealthy = 1;
                rPress = 1;
                hidden = 1;
                blend = !blend;

            }
            break;

        case (1<<2):

            if ((1<<2))
            {

                blend = !blend;

                cheatON = (cheatON)? 0: 1;


            }
            break;

        case (1<<5):

            if ((1<<5) && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {

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

        case (1<<4):

            if((1<<4) && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {

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

        case (1<<6):

            if((1<<6) && ryup->aniState != ROLL
                && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
            {
                if (ryup->aniState == CROUCHSLASH);
                else ryup->aniState = RYUMOVE;
                mapCollisions(ryuCoords);
            }
            break;

        case (1<<7):

            if((1<<7) && ryup->aniState != ROLL
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
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))) && ryup->aniState != CROUCHSLASH
        && ryup->aniState != ROLL && ryup->aniState != RYUHIT
        && ryup->aniState != RYUDIE && !grandChamp)
    {
        ryup->row += 8;
        ryup->aniState = CROUCHSLASH;

        ryup->currFrame = 0;
        aPress = 1;

    }

    else if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))) && ryup->aniState == CROUCHSLASH
        && ryup->aniState != ROLL && ryup->aniState != RYUHIT
        && ryup->aniState != RYUDIE && !grandChamp)
    {
        ryup->row -= 8;
        ryup->aniState = RYUIDLE;
        ryup->currFrame = 0;
        aPress = 0;
    }

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))) && !grandChamp)
    {
        bPress = 1;
    }

    if ((!(~(oldButtons)&((1<<9))) && (~buttons & ((1<<9)))) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {
        ryup->aniState = ROLL;
        ryup->currFrame = 0;

    }

    if ((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8)))) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && stealthRecovered && !grandChamp)
    {
# 1539 "spriters.c"
        ryup->stealthy = 1;
        rPress = 1;
        hidden = 1;
        blend = !blend;



    }







    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
    {

        blend = !blend;

        ryup->health = 99;




    }

    if ((~(*(volatile unsigned int *)0x04000130) & ((1<<5))) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {

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

    else if((~(*(volatile unsigned int *)0x04000130) & ((1<<4))) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {

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

    else if((~(*(volatile unsigned int *)0x04000130) & ((1<<6))) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {
        if (ryup->aniState == CROUCHSLASH);
        else ryup->aniState = RYUMOVE;
        mapCollisions(ryuCoords);
    }

    else if((~(*(volatile unsigned int *)0x04000130) & ((1<<7))) && ryup->aniState != ROLL
        && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE
        && !grandChamp)
    {
        if (ryup->aniState == CROUCHSLASH);
        else ryup->aniState = RYUMOVE;
        mapCollisions(ryuCoords);
    }
    else
    {

        if (ryup->aniState != CROUCHSLASH && ryup->aniState != ROLL
            && ryup->aniState != RYUHIT && ryup->aniState != RYUDIE)
        {

            ryup->aniState = RYUIDLE;

        }


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



            ryup->currFrame++;

            ryup->currFrame = (ryup->currFrame > 6)? 3: ryup->currFrame;

        }
    }

    else if (ryup->aniState == CROUCHSLASH)
    {
        if ((~(*(volatile unsigned int *)0x04000130) & ((1<<4))) || (~(*(volatile unsigned int *)0x04000130) & ((1<<5))) ||
            (~(*(volatile unsigned int *)0x04000130) & ((1<<6))) || (~(*(volatile unsigned int *)0x04000130) & ((1<<7))))
        {
            ryup->aniCounter++;
            if (ryup->aniCounter%16 == 0)
            {

                ryup->currFrame++;

                ryup->currFrame = (ryup->currFrame > 3)? 0: ryup->currFrame;
            }
        }
        if (bPress && !(~(*(volatile unsigned int *)0x04000130) & ((1<<4))) && !(~(*(volatile unsigned int *)0x04000130) & ((1<<5))) &&
            !(~(*(volatile unsigned int *)0x04000130) & ((1<<6))) && !(~(*(volatile unsigned int *)0x04000130) & ((1<<7))))
        {

            ryup->aniCounter++;



            ryup->currFrame++;

            playSoundB(slashSFX, 7378, 11025);

            if (ryup->currFrame > 5)
            {
                ryup->currFrame = 3;

                bPress = 0;
            }


        }
        else
        {
            bPress = 0;
        }
    }

    else if (ryup->aniState == ROLL)
    {



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
        mapCollisions(ryuCoords);


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
                ryup->recovering = 0;

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

    (shadowOAMptr+2)->attr0 = (2 << 8);

    if (ryup->aniState == RYUIDLE)
    {
        ryup->height = 32;
        ryup->width = 16;

        if (ryup->currFrame < 2)
        {
            (shadowOAMptr+1)->attr0 = (2 << 8);
            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);
            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState-5)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);
        }

    }


    else if (ryup->aniState == RYUMOVE)
    {

        if (ryup->currFrame < 3)
        {

            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);
            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);

            if (ryup->currFrame == 2)
            {
                ryup->height = 31;
                ryup->width = 16;
            }

            ryup->currFrame = 3;

        }

        else if (ryup->currFrame == 3)
        {
            ryup->height = 31;
            ryup->width = 19;

            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);
            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);
            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col - 8) & 0x1FF) | (1 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col + 16) & 0x1FF) | (1 << 14) | ryup->hflip;
            }
            (shadowOAMptr+1)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2+2)) | (((ryup->layer) & 3) << 10);

        }

        else if (ryup->currFrame == 4)
        {
            ryup->height = 32;
            ryup->width = 18;

            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);
            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2+1)) | (((ryup->layer) & 3) << 10);


            (shadowOAMptr+1)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);
            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col - 8) & 0x1FF) | (0 << 14) | ryup->hflip;
            }
            else
            {

                (shadowOAMptr+1)->attr1 = ((ryup->col + 16) & 0x1FF) | (0 << 14) | ryup->hflip;
            }
            (shadowOAMptr+1)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2+3)) | (((ryup->layer) & 3) << 10);

        }

        else if (ryup->currFrame == 5)
        {
            ryup->height = 31;
            ryup->width = 25;

            (shadowOAMptr+1)->attr0 = (2 << 8);
            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+0)->attr1 = ((ryup->col-16) & 0x1FF) | (2 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            }
            (shadowOAMptr+0)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2+2)) | (((ryup->layer) & 3) << 10);


        }

        else if (ryup->currFrame == 6)
        {
            ryup->height = 32;
            ryup->width = 18;

            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2+4)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = (ryup->row & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col-8) & 0x1FF) | (1 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col + 16) & 0x1FF) | (1 << 14) | ryup->hflip;
            }
            (shadowOAMptr+1)->attr2 = ((ryup->aniState)*32+(ryup->currFrame*2+6)) | (((ryup->layer) & 3) << 10);

        }

    }

    else if (ryup->aniState == CROUCHSLASH)
    {
        ryup->height = 24;
        ryup->width = 16;

        if (ryup->currFrame < 4)
        {
            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4)*32+(ryup->currFrame*2))| (((ryup->layer) & 3) << 10);


            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+2)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);

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

            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+0)->attr1 = ((ryup->col-16) & 0x1FF) | (2 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            }
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = ((ryup->col) & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+2)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 5)
        {
            ryup->height = 24;
            ryup->width = 40;

            (shadowOAMptr+0)->attr0 = (ryup->row & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+0)->attr1 = ((ryup->col-16) & 0x1FF) | (2 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            }

            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4)*32+(ryup->currFrame*2+2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = ((ryup->col) & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+2)*32+(ryup->currFrame*2+2)) | (((ryup->layer) & 3) << 10);


            (shadowOAMptr+2)->attr0 = ((ryup->row) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+2)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+2)->attr1 = ((ryup->col-24) & 0x1FF) | (0 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+2)->attr1 = ((ryup->col+32) & 0x1FF) | (0 << 14) | ryup->hflip;
            }
            (shadowOAMptr+2)->attr2 = ((ryup->aniState*4)*32+(ryup->currFrame*3+1)) | (((ryup->layer) & 3) << 10);
        }
    }

    else if (ryup->aniState == ROLL)
    {

        if (ryup->currFrame == 0)
        {
            ryup->height = 24;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+2)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 1)
        {
            ryup->height = 16;
            ryup->width = 24;

            (shadowOAMptr+0)->attr0 = ((ryup->row+16) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4+1)*32+(ryup->currFrame*2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col-8) & 0x1FF) | (0 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col+16) & 0x1FF) | (0 << 14) | ryup->hflip;

            }
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+1)*32+(ryup->currFrame*4)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 2)
        {
            ryup->height = 24;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4)*32+(ryup->currFrame*2+1)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+2)*32+(ryup->currFrame*2+1)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 3)
        {
            ryup->height = 16;
            ryup->width = 24;

            (shadowOAMptr+0)->attr0 = ((ryup->row+16) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4+1)*32+(ryup->currFrame*2+1)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12))
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col-8) & 0x1FF) | (0 << 14) | ryup->hflip;
            }
            else
            {
                (shadowOAMptr+1)->attr1 = ((ryup->col+16) & 0x1FF) | (0 << 14) | ryup->hflip;
            }
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+1)*32+(ryup->currFrame*3)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 4)
        {
            ryup->height = 24;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4)*32+(ryup->currFrame*3-2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((ryup->aniState*4+2)*32+(ryup->currFrame*3-2)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 5)
        {
            ryup->height = 28;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((ryup->aniState*4-1)*32+(ryup->currFrame*2+2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = (2 << 8);
        }

    }

    else if (ryup->aniState == RYUHIT)
    {
        if (ryup->currFrame == 0)
        {
            ryup->height = 23;
            ryup->width = 18;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((12)*32+(1)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((14)*32+(1)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+2)->attr0 = ((ryup->row) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+2)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12)) (shadowOAMptr+2)->attr1 = ((ryup->col+16) & 0x1FF) | (0 << 14) | ryup->hflip;
            else (shadowOAMptr+2)->attr1 = ((ryup->col-8) & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+2)->attr2 = ((12)*32+(0)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 1)
        {
            ryup->height = 30;
            ryup->width = 19;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((11)*32+(4)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12)) (shadowOAMptr+1)->attr1 = ((ryup->col+16) & 0x1FF) | (0 << 14) | ryup->hflip;
            else (shadowOAMptr+1)->attr1 = ((ryup->col-8) & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((13)*32+(3)) | (((ryup->layer) & 3) << 10);

        }
        else if (ryup->currFrame == 2)
        {
            ryup->height = 24;
            ryup->width = 15;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((12)*32+(6)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((14)*32+(6)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 3)
        {
            ryup->height = 16;
            ryup->width = 24;

            (shadowOAMptr+0)->attr0 = ((ryup->row+16) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = ((ryup->col) & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((13)*32+(8)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12)) (shadowOAMptr+1)->attr1 = ((ryup->col-8) & 0x1FF) | (0 << 14) | ryup->hflip;
            else (shadowOAMptr+1)->attr1 = ((ryup->col+16) & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((13)*32+(10)) | (((ryup->layer) & 3) << 10);
        }
        else if (ryup->currFrame == 4)
        {
            ryup->height = 24;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((12)*32+(11)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+24) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((14)*32+(11)) | (((ryup->layer) & 3) << 10);
        }

        else if (ryup->currFrame == 5)
        {
            ryup->height = 28;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (2 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((11)*32+(13)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = (2 << 8);
        }
    }

    else if (ryup->aniState == RYUDIE)
    {
        if (ryup->currFrame == 0)
        {
            ryup->height = 23;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((15)*32+(0)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+16) & 0xFF) | (1 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            (shadowOAMptr+1)->attr1 = (ryup->col & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((17)*32+(0)) | (((ryup->layer) & 3) << 10);

        }
        else if (ryup->currFrame == 1)
        {
            ryup->height = 15;
            ryup->width = 16;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((16)*32+(2)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = (2 << 8);
        }

        else if (ryup->currFrame == 2)
        {
            ryup->height= 16;
            ryup->width = 20;

            (shadowOAMptr+0)->attr0 = ((ryup->row+8) & 0xFF) | (0 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+0)->attr0 |= (1 << 10);

            (shadowOAMptr+0)->attr1 = (ryup->col & 0x1FF) | (1 << 14) | ryup->hflip;
            (shadowOAMptr+0)->attr2 = ((16)*32+(4)) | (((ryup->layer) & 3) << 10);

            (shadowOAMptr+1)->attr0 = ((ryup->row+8) & 0xFF) | (2 << 14) | (0 << 13);
            if(blend) (shadowOAMptr+1)->attr0 |= (1 << 10);

            if (ryup->hflip == (1 << 12)) (shadowOAMptr+1)->attr1 = ((ryup->col-8) & 0x1FF) | (0 << 14) | ryup->hflip;
            else (shadowOAMptr+1)->attr1 = ((ryup->col+16) & 0x1FF) | (0 << 14) | ryup->hflip;
            (shadowOAMptr+1)->attr2 = ((16)*32+(6)) | (((ryup->layer) & 3) << 10);
        }
    }
}



void updateEnemies()
{
# 2298 "spriters.c"
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


    enemyAI(guard0p);
    enemyAI(guard1p);
    enemyAI(guard2p);
    enemyAI(guard3p);
    enemyAI(guard4p);
    enemyAI(guard5p);







    enemySpriteWork(guard0p);
    enemySpriteWork(guard1p);
    enemySpriteWork(guard2p);
    enemySpriteWork(guard3p);
    enemySpriteWork(guard4p);
    enemySpriteWork(guard5p);

}


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



    if (gp->onScreen == (2 << 8) && gp->aniState != GUARDAGGRO) return;

    if (gp->aniState == GUARDDOCILE)
    {
     walkCounter++;
        switch(gp->direction)
        {

            case ENEMY_UP:






                break;

            case ENEMY_DOWN:






                break;

            case ENEMY_LEFT:
                enemyAnimation(gp);
                gp->hflip = (0 << 12);
                if (walkCounter%gp->lag == 0) gp->bigCol--;



                if (gp->bigCol < gp->initCol - gp->range)
                {
                    gp->bigCol = gp->initCol - gp->range;
                    gp->direction = ENEMY_RIGHT;
                }
                break;

            case ENEMY_RIGHT:
                enemyAnimation(gp);
                gp->hflip = (1 << 12);
                if (walkCounter%gp->lag == 0) gp->bigCol++;


                if (gp->bigCol > gp->initCol + gp->range)
                {
                    gp->bigCol = gp->initCol + gp->range;
                    gp->direction = ENEMY_LEFT;
                }
                break;
        }

     gp->moveCount++;
     if (gp->moveCount == 100)
     {
         gp->direction = rand()%4;
            gp->currFrame = 0;
         gp->moveCount = 0;
     }

    }
    if (gp->aniState == GUARDAGGRO)
    {

        rageCounter++;
        if (rageCounter%gp->reactionTime == 0)
        {
            gp->raging = 1;
        }
        if (gp->raging)
        {
            if(!ryup->recovering)
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


                if (gp->bigCol > ryup->bigCol)
                {
                    gp->hflip = (0 << 12);
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
                    gp->hflip = (1 << 12);
                    if (gp->bigCol < (ryup->bigCol-58))
                    {
                        gp->bigCol++;
                        enemyAnimation(gp);
                    }
                }
            }
        }
        else
        {
            enemyAnimation(gp);
            gp->currFrame = 0;
        }




    }
}

void enemyAnimation(ENEMY *gp)
{





    gp->aniCounter++;

    if (gp->aniState == GUARDDOCILE)
    {
        gp->height = 40;
        gp->width = 32;

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

        if (gp->aniCounter%10 == 0)
        {
            gp->currFrame++;
            gp->currFrame = (gp->currFrame > 2)? 0: gp->currFrame;
        }
    }

}


void enemySpriteWork(ENEMY *gp)
{

    if (gp->dead)
    {

        return;
    }
    gp->onScreen = (gp->row < 160 && gp-> row > 0 && gp->col < 240 && gp->col > 0-gp->width)? (0 << 8) : (2 << 8);

    if (gp->aniState == GUARDDOCILE)
    {
     switch(gp->eNum)
        {


            case GUARD0:

                (shadowOAMptr+3)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+3)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+3)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);




                (shadowOAMptr+4)->attr0 = ((gp->row+32) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+4)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+4)->attr2 = ((gp->currFrame*5+4)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                break;

            case GUARD1:

                (shadowOAMptr+6)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+6)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+6)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                (shadowOAMptr+7)->attr0 = ((gp->row+32) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+7)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+7)->attr2 = ((gp->currFrame*5+4)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                break;

            case GUARD2:
                (shadowOAMptr+9)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+9)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+9)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                (shadowOAMptr+10)->attr0 = ((gp->row+32) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+10)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+10)->attr2 = ((gp->currFrame*5+4)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                break;

            case GUARD3:
                (shadowOAMptr+12)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+12)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+12)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                (shadowOAMptr+13)->attr0 = ((gp->row+32) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+13)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+13)->attr2 = ((gp->currFrame*5+4)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;

            case GUARD4:
                (shadowOAMptr+15)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+15)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+15)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                (shadowOAMptr+16)->attr0 = ((gp->row+32) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+16)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+16)->attr2 = ((gp->currFrame*5+4)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;

            case GUARD5:
                (shadowOAMptr+18)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+18)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+18)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);

                (shadowOAMptr+19)->attr0 = ((gp->row+32) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+19)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+19)->attr2 = ((gp->currFrame*5+4)*32+(gp->aniState*11)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;
        }

    }



    else if (gp->aniState == GUARDAGGRO)
    {
        switch(gp->eNum)
        {


            case GUARD0:

                (shadowOAMptr+3)->attr0 = ((gp->row+8) & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+3)->attr1 = ((gp->col+16) & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+3)->attr2 = ((gp->currFrame*5+1)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+4)->attr0 = ((gp->row) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+4)->attr1 = ((gp->col+16) & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+4)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+5)->attr0 = ((gp->row+24) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                if (gp->hflip == (1 << 12))
                {
                    (shadowOAMptr+5)->attr1 = ((gp->col+48) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+5)->attr1 = ((gp->col) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                (shadowOAMptr+5)->attr2 = ((gp->currFrame*5+3)*32+(gp->aniState*8+2)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;

            case GUARD1:

                (shadowOAMptr+6)->attr0 = ((gp->row+8) & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+6)->attr1 = ((gp->col+16) & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+6)->attr2 = ((gp->currFrame*5+1)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+7)->attr0 = ((gp->row) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+7)->attr1 = ((gp->col+16) & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+7)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+8)->attr0 = ((gp->row+24) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                if (gp->hflip == (1 << 12))
                {
                    (shadowOAMptr+8)->attr1 = ((gp->col+48) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+8)->attr1 = ((gp->col) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                (shadowOAMptr+8)->attr2 = ((gp->currFrame*5+3)*32+(gp->aniState*8+2)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;

            case GUARD2:

                (shadowOAMptr+9)->attr0 = ((gp->row+8) & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+9)->attr1 = ((gp->col+16) & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+9)->attr2 = ((gp->currFrame*5+1)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+10)->attr0 = ((gp->row) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+10)->attr1 = ((gp->col+16) & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+10)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+11)->attr0 = ((gp->row+24) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                if (gp->hflip == (1 << 12))
                {
                    (shadowOAMptr+11)->attr1 = ((gp->col+48) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+11)->attr1 = ((gp->col) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                (shadowOAMptr+11)->attr2 = ((gp->currFrame*5+3)*32+(gp->aniState*8+2)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;

            case GUARD3:

                (shadowOAMptr+12)->attr0 = ((gp->row+8) & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+12)->attr1 = ((gp->col+16) & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+12)->attr2 = ((gp->currFrame*5+1)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+13)->attr0 = ((gp->row) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+13)->attr1 = ((gp->col+16) & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+13)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+14)->attr0 = ((gp->row+24) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                if (gp->hflip == (1 << 12))
                {
                    (shadowOAMptr+14)->attr1 = ((gp->col+48) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+14)->attr1 = ((gp->col) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                (shadowOAMptr+14)->attr2 = ((gp->currFrame*5+3)*32+(gp->aniState*8+2)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;

            case GUARD4:

                (shadowOAMptr+15)->attr0 = ((gp->row+8) & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+15)->attr1 = ((gp->col+16) & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+15)->attr2 = ((gp->currFrame*5+1)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+16)->attr0 = ((gp->row) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+16)->attr1 = ((gp->col+16) & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+16)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+17)->attr0 = ((gp->row+24) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                if (gp->hflip == (1 << 12))
                {
                    (shadowOAMptr+17)->attr1 = ((gp->col+48) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+17)->attr1 = ((gp->col) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                (shadowOAMptr+17)->attr2 = ((gp->currFrame*5+3)*32+(gp->aniState*8+2)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;

            case GUARD5:

                (shadowOAMptr+18)->attr0 = ((gp->row+8) & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+18)->attr1 = ((gp->col+16) & 0x1FF) | (2 << 14) | gp->hflip;
                (shadowOAMptr+18)->attr2 = ((gp->currFrame*5+1)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+19)->attr0 = ((gp->row) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                (shadowOAMptr+19)->attr1 = ((gp->col+16) & 0x1FF) | (1 << 14) | gp->hflip;
                (shadowOAMptr+19)->attr2 = ((gp->currFrame*5)*32+(gp->aniState*8+4)) | (1<<12) | (((gp->layer) & 3) << 10);


                (shadowOAMptr+20)->attr0 = ((gp->row+24) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                if (gp->hflip == (1 << 12))
                {
                    (shadowOAMptr+20)->attr1 = ((gp->col+48) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                else
                {
                    (shadowOAMptr+20)->attr1 = ((gp->col) & 0x1FF) | (0 << 14) | gp->hflip;
                }
                (shadowOAMptr+20)->attr2 = ((gp->currFrame*5+3)*32+(gp->aniState*8+2)) | (1<<12) | (((gp->layer) & 3) << 10);
                break;
        }
    }

    else if (gp->aniState == GUARDDEFEAT)
    {
        deathCounter++;
        switch (gp->eNum)
        {
            case GUARD0:

                if (gp->health == 0)
                {
                    spriteColorChange16(1, ((4) | (2)<<5 | (2)<<10));

                    if (gp->raging)
                    {
                        if (!gp->dead) (shadowOAMptr+3)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+3)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+3)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        if (!gp->dead) (shadowOAMptr+4)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+4)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+4)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+5)->attr0 = (2 << 8);

                    }
                    else
                    {
                        if (!gp->dead) (shadowOAMptr+4)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13)| gp->onScreen;
                        (shadowOAMptr+3)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+3)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+4)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+4)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+3)->attr0 = (2 << 8);
                        (shadowOAMptr+4)->attr0 = (2 << 8);
                        (shadowOAMptr+5)->attr0 = (2 << 8);
                        gp->dead = 1;
                        updateOAM();
                        for (int i=0; i < 30; i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+3)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+3)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                    if (gp->raging) (shadowOAMptr+3)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                    else (shadowOAMptr+3)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);

                    (shadowOAMptr+4)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+4)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;

                    if (gp->raging)
                    {
                        (shadowOAMptr+4)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+5)->attr0 = (2 << 8);
                    }
                    else{
                        (shadowOAMptr+4)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = 0;
                    }
                }
                break;

            case GUARD1:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, ((4) | (2)<<5 | (2)<<10));

                    if (gp->raging)
                    {
                        if (!gp->dead) (shadowOAMptr+6)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+6)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+6)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        if (!gp->dead) (shadowOAMptr+7)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+7)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+7)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+8)->attr0 = (2 << 8);

                    }
                    else
                    {
                        if (!gp->dead) (shadowOAMptr+7)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13)| gp->onScreen;
                        (shadowOAMptr+6)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+6)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+7)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+7)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+6)->attr0 = (2 << 8);
                        (shadowOAMptr+7)->attr0 = (2 << 8);
                        (shadowOAMptr+8)->attr0 = (2 << 8);
                        gp->dead = 1;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+6)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+6)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                    if (gp->raging) (shadowOAMptr+6)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                    else (shadowOAMptr+6)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);

                    (shadowOAMptr+7)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+7)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;

                    if (gp->raging)
                    {
                        (shadowOAMptr+7)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+8)->attr0 = (2 << 8);
                    }
                    else{
                        (shadowOAMptr+7)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = 0;
                    }
                }
                break;

            case GUARD2:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, ((4) | (2)<<5 | (2)<<10));

                    if (gp->raging)
                    {
                        if (!gp->dead) (shadowOAMptr+9)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+9)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+9)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        if (!gp->dead) (shadowOAMptr+10)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+10)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+10)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+11)->attr0 = (2 << 8);

                    }
                    else
                    {
                        if (!gp->dead) (shadowOAMptr+10)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13)| gp->onScreen;
                        (shadowOAMptr+9)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+9)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+10)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+10)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+9)->attr0 = (2 << 8);
                        (shadowOAMptr+10)->attr0 = (2 << 8);
                        (shadowOAMptr+11)->attr0 = (2 << 8);
                        gp->dead = 1;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+9)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+9)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                    if (gp->raging) (shadowOAMptr+9)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                    else (shadowOAMptr+9)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);

                    (shadowOAMptr+10)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+10)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;

                    if (gp->raging)
                    {
                        (shadowOAMptr+10)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+11)->attr0 = (2 << 8);
                    }
                    else{
                        (shadowOAMptr+10)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = 0;
                    }
                }
                break;

            case GUARD3:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, ((4) | (2)<<5 | (2)<<10));

                    if (gp->raging)
                    {
                        if (!gp->dead) (shadowOAMptr+12)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+12)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+12)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        if (!gp->dead) (shadowOAMptr+13)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+13)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+13)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+14)->attr0 = (2 << 8);

                    }
                    else
                    {
                        if (!gp->dead) (shadowOAMptr+13)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13)| gp->onScreen;
                        (shadowOAMptr+12)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+12)->attr2 = ((15)*32+(22)) | (1<<12);
                        (shadowOAMptr+13)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+13)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+12)->attr0 = (2 << 8);
                        (shadowOAMptr+13)->attr0 = (2 << 8);
                        (shadowOAMptr+14)->attr0 = (2 << 8);
                        gp->dead = 1;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+12)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+12)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                    if (gp->raging) (shadowOAMptr+12)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                    else (shadowOAMptr+12)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);

                    (shadowOAMptr+13)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+13)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;

                    if (gp->raging)
                    {
                        (shadowOAMptr+13)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+14)->attr0 = (2 << 8);
                    }
                    else{
                        (shadowOAMptr+13)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = 0;
                    }
                }
                break;

            case GUARD4:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, ((4) | (2)<<5 | (2)<<10));

                    if (gp->raging)
                    {
                        if (!gp->dead) (shadowOAMptr+15)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+15)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+15)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        if (!gp->dead) (shadowOAMptr+16)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+16)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+16)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+17)->attr0 = (2 << 8);

                    }
                    else
                    {
                        if (!gp->dead) (shadowOAMptr+16)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13)| gp->onScreen;
                        (shadowOAMptr+15)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+15)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+16)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+16)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+15)->attr0 = (2 << 8);
                        (shadowOAMptr+16)->attr0 = (2 << 8);
                        (shadowOAMptr+17)->attr0 = (2 << 8);
                        gp->dead = 1;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+15)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+15)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                    if (gp->raging) (shadowOAMptr+15)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                    else (shadowOAMptr+15)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);

                    (shadowOAMptr+16)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+16)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;

                    if (gp->raging)
                    {
                        (shadowOAMptr+16)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+17)->attr0 = (2 << 8);
                    }
                    else{
                        (shadowOAMptr+16)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }


                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = 0;
                    }
                }
                break;

            case GUARD5:
                if (gp->health == 0)
                {
                    spriteColorChange16(1, ((4) | (2)<<5 | (2)<<10));

                    if (gp->raging)
                    {
                        if (!gp->dead) (shadowOAMptr+18)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+18)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+18)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        if (!gp->dead) (shadowOAMptr+19)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                        (shadowOAMptr+19)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+19)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+20)->attr0 = (2 << 8);

                    }
                    else
                    {
                        if (!gp->dead) (shadowOAMptr+19)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13)| gp->onScreen;
                        (shadowOAMptr+18)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                        (shadowOAMptr+18)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+19)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;
                        (shadowOAMptr+19)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }

                    if (deathCounter%40 == 0)
                    {
                        (shadowOAMptr+18)->attr0 = (2 << 8);
                        (shadowOAMptr+19)->attr0 = (2 << 8);
                        (shadowOAMptr+20)->attr0 = (2 << 8);
                        gp->dead = 1;
                        updateOAM();
                        for (int i=0;i<30;i++) spriteColorRestore16(1, spritersSheetPal);
                    }
                }
                else
                {
                    (shadowOAMptr+18)->attr0 = (gp->row & 0xFF) | (0 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+18)->attr1 = (gp->col & 0x1FF) | (2 << 14) | gp->hflip;
                    if (gp->raging) (shadowOAMptr+18)->attr2 = ((15)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                    else (shadowOAMptr+18)->attr2 = ((15)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);

                    (shadowOAMptr+19)->attr0 = ((gp->row+40) & 0xFF) | (1 << 14) | (0 << 13) | gp->onScreen;
                    (shadowOAMptr+19)->attr1 = (gp->col & 0x1FF) | (1 << 14) | gp->hflip;

                    if (gp->raging)
                    {
                        (shadowOAMptr+19)->attr2 = ((15+4)*32+(28)) | (1<<12) | (((gp->layer) & 3) << 10);
                        (shadowOAMptr+20)->attr0 = (2 << 8);
                    }
                    else{
                        (shadowOAMptr+19)->attr2 = ((15+4)*32+(22)) | (1<<12) | (((gp->layer) & 3) << 10);
                    }

                    if (deathCounter%20 == 0)
                    {
                        gp->aniState = GUARDAGGRO;
                        gp->recovering = 0;
                    }
                }
                break;
        }
    }

}


void spotLightMovement(ENEMY *lp)
{
    scanCounter++;
    if (lp->onScreen == (2 << 8)) return;

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




    }
# 3296 "spriters.c"
}

void spotLightSpriteWork(ENEMY *lp)
{
# 3317 "spriters.c"
    lp->onScreen = (lp->row < 160 && lp-> row > 0 && lp->col < 240 && lp->col > 0-lp->width)? (0 << 8) : (2 << 8);

    switch (lp->eNum)
    {
        case LIGHT0:
            (shadowOAMptr+36)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+36)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+36)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+37)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+37)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+37)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+38)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+38)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+38)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+39)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+39)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+39)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT1:
            (shadowOAMptr+40)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+40)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+40)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+41)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+41)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+41)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+42)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+42)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+42)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+43)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+43)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+43)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT2:
            (shadowOAMptr+44)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+44)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+44)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+45)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+45)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+45)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+46)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+46)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+46)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+47)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+47)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+47)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT3:
            (shadowOAMptr+48)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+48)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+48)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+49)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+49)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+49)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+50)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+50)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+50)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+51)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+51)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+51)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT4:
            (shadowOAMptr+52)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+52)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+52)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+53)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+53)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+53)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+54)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+54)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+54)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+55)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+55)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+55)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT5:
            (shadowOAMptr+56)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+56)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+56)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+57)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+57)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+57)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+58)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+58)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+58)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+59)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+59)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+59)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT6:
            (shadowOAMptr+60)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+60)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+60)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+61)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+61)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+61)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+62)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+62)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+62)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+63)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+63)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+63)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT7:
            (shadowOAMptr+64)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+64)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+64)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+65)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+65)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+65)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+66)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+66)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+66)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+67)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+67)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+67)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT8:
            (shadowOAMptr+68)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+68)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+68)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+69)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+69)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+69)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+70)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+70)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+70)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+71)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+71)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+71)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT9:
            (shadowOAMptr+72)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+72)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+72)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+73)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+73)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+73)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+74)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+74)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+74)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+75)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+75)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+75)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);
            break;

        case LIGHT10:
            (shadowOAMptr+76)->attr0 = (lp->row & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+76)->attr1 = (lp->col & 0x1FF) | (1 << 14);
            (shadowOAMptr+76)->attr2 = ((18)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+77)->attr0 = (lp->row & 0xFF) | (2 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+77)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+77)->attr2 = ((18)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+78)->attr0 = ((lp->row+16) & 0xFF) | (1 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+78)->attr1 = (lp->col & 0x1FF) | (0 << 14);
            (shadowOAMptr+78)->attr2 = ((20)*32+(2)) | (2<<12) | (((lp->layer) & 3) << 10);

            (shadowOAMptr+79)->attr0 = ((lp->row+16) & 0xFF) | (0 << 14) | (0 << 13) | (1 << 10) | lp->onScreen;
            (shadowOAMptr+79)->attr1 = ((lp->col+16) & 0x1FF) | (0 << 14);
            (shadowOAMptr+79)->attr2 = ((20)*32+(4)) | (2<<12) | (((lp->layer) & 3) << 10);

    }

}



void updateScreenObjs()
{






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



    if (sop->onScreen != (2 << 8))
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
    sop->onScreen = (sop->row < 160 && sop->row > 0 && sop->col < 240 && sop->col > 0-sop->width)? (0 << 8) : (2 << 8);



    if (sop->onScreen != (2 << 8))
    {
        switch (sop->type)
        {
            case FIRE0:
                (shadowOAMptr+123)->attr0 = (sop->row & 0xFF) | (2 << 14) | (0 << 13);
                (shadowOAMptr+123)->attr1 = (sop->col & 0x1FF) | (0 << 14);
                (shadowOAMptr+123)->attr2 = ((sop->aniState+19)*32+(sop->currFrame+5)) | (((sop->layer) & 3) << 10) | (2<<12);
                break;

            case FIRE1:
                (shadowOAMptr+124)->attr0 = (sop->row & 0xFF) | (2 << 14) | (0 << 13);
                (shadowOAMptr+124)->attr1 = (sop->col & 0x1FF) | (0 << 14);
                (shadowOAMptr+124)->attr2 = ((sop->aniState+19)*32+(sop->currFrame+5)) | (((sop->layer) & 3) << 10) | (2<<12);

        }
    }
}


void drawPause()
{

 (shadowOAMptr+125)->attr0 = (pauseSignptr->row & 0xFF) | (1 << 14) | (0 << 13);
 (shadowOAMptr+125)->attr1 = (pauseSignptr->col & 0x1FF) | (2 << 14);
 (shadowOAMptr+125)->attr2 = ((21)*32+(0)) | (((0) & 3) << 10);

 (shadowOAMptr+126)->attr0 = (pauseSignptr->row & 0xFF) | (1 << 14) | (0 << 13);
 (shadowOAMptr+126)->attr1 = ((pauseSignptr->col+32) & 0x1FF) | (2 << 14);
 (shadowOAMptr+126)->attr2 = ((21)*32+(4)) | (((0) & 3) << 10);

 (shadowOAMptr+127)->attr0 = (pauseSignptr->row & 0xFF) | (2 << 14) | (0 << 13);
 (shadowOAMptr+127)->attr1 = ((pauseSignptr->col+64) & 0x1FF) | (0 << 14);
 (shadowOAMptr+127)->attr2 = ((21)*32+(8)) | (((0) & 3) << 10);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
}


void erasePause()
{
 (shadowOAMptr+125)->attr0 = (2 << 8);
 (shadowOAMptr+126)->attr0 = (2 << 8);
 (shadowOAMptr+127)->attr0 = (2 << 8);
}

void updateOAM()
{

  *(volatile unsigned short *)0x04000010 = bg0hOff;

        *(volatile unsigned short *)0x04000018 = bg2hOff;
        *(volatile unsigned short *)0x0400001A = bg2vOff;




        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
}
