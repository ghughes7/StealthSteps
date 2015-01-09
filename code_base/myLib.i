# 1 "myLib.c"
# 1 "<command-line>"
# 1 "myLib.c"
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




# 2 "myLib.c" 2
# 1 "/opt/devkitARM/arm-none-eabi/include/math.h" 1 3





# 1 "/opt/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 7 "/opt/devkitARM/arm-none-eabi/include/math.h" 2 3







union __dmath
{
  double d;
  __ULong i[2];
};

union __fmath
{
  float f;
  __ULong i[1];
};


union __ldmath
{
  long double ld;
  __ULong i[4];
};
# 108 "/opt/devkitARM/arm-none-eabi/include/math.h" 3
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);
# 154 "/opt/devkitARM/arm-none-eabi/include/math.h" 3
    typedef float float_t;
    typedef double double_t;
# 198 "/opt/devkitARM/arm-none-eabi/include/math.h" 3
extern int __isinff (float x);
extern int __isinfd (double x);
extern int __isnanf (float x);
extern int __isnand (double x);
extern int __fpclassifyf (float x);
extern int __fpclassifyd (double x);
extern int __signbitf (float x);
extern int __signbitd (double x);
# 258 "/opt/devkitARM/arm-none-eabi/include/math.h" 3
extern double infinity (void);
extern double nan (const char *);
extern int finite (double);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern int finitef (float);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);






extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double value, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 594 "/opt/devkitARM/arm-none-eabi/include/math.h" 3

# 3 "myLib.c" 2
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
# 4 "myLib.c" 2
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
# 5 "myLib.c" 2

unsigned short *videoBuffer = (u16 *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer = (u16 *)0x600A000;

DMA *dma = (DMA *)0x40000B0;


void loadPalette(const unsigned short* palette)
{
 DMANow(3, (unsigned short*)palette, ((u16 *)0x5000000), 256);

 ((u16 *)0x5000000)[255] = ((31) | (31)<<5 | (31)<<10);



    ((u16 *)0x5000000)[254] = 254;
}







int compare(const void *a,const void *b)
{
 int *x = (int *) a;
 int *y = (int *) b;
 return *x - *y;
}
# 57 "myLib.c"
void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control)
{
 dma[channel].src = source;
 dma[channel].dst = destination;
 dma[channel].cnt = (1 << 31) | control;
}





void spriteColorChange16(char subPalette, unsigned short targetColor){
    int i;
    for(i=0; i<16; i++){

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((31) | (0)<<5 | (0)<<10)) > (targetColor & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] -= ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (31)<<5 | (0)<<10)) > (targetColor & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] -= ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (0)<<5 | (31)<<10)) > (targetColor & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] -= ((0) | (0)<<5 | (1)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((31) | (0)<<5 | (0)<<10)) < (targetColor & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] += ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (31)<<5 | (0)<<10)) < (targetColor & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] += ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (0)<<5 | (31)<<10)) < (targetColor & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] += ((0) | (0)<<5 | (1)<<10);
        }
    }
}



void spriteColorRestore16(char subPalette, unsigned short const* originalPalette){
    int i;
    for(i=0; i<16; i++){

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((31) | (0)<<5 | (0)<<10)) > (originalPalette[subPalette*16 + i] & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] -= ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (31)<<5 | (0)<<10)) > (originalPalette[subPalette*16 + i] & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] -= ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (0)<<5 | (31)<<10)) > (originalPalette[subPalette*16 + i] & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] -= ((0) | (0)<<5 | (1)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((31) | (0)<<5 | (0)<<10)) < (originalPalette[subPalette*16 + i] & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] += ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (31)<<5 | (0)<<10)) < (originalPalette[subPalette*16 + i] & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] += ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[subPalette*16 + i] & ((0) | (0)<<5 | (31)<<10)) < (originalPalette[subPalette*16 + i] & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[subPalette*16 + i] += ((0) | (0)<<5 | (1)<<10);
        }
    }
}



void spriteColorChange256(unsigned short targetColor){
    int i;
    for(i=0; i<256; i++){

        if((((unsigned short*)(0x5000200))[i] & ((31) | (0)<<5 | (0)<<10)) > (targetColor & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] -= ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (31)<<5 | (0)<<10)) > (targetColor & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] -= ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (0)<<5 | (31)<<10)) > (targetColor & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[i] -= ((0) | (0)<<5 | (1)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((31) | (0)<<5 | (0)<<10)) < (targetColor & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] += ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (31)<<5 | (0)<<10)) < (targetColor & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] += ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (0)<<5 | (31)<<10)) < (targetColor & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[i] += ((0) | (0)<<5 | (1)<<10);
        }
    }
}

void spriteColorRestore256(unsigned short const* originalPalette){
    int i;
    for(i=0; i<256; i++){

        if((((unsigned short*)(0x5000200))[i] & ((31) | (0)<<5 | (0)<<10)) > (originalPalette[i] & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] -= ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (31)<<5 | (0)<<10)) > (originalPalette[i] & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] -= ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (0)<<5 | (31)<<10)) > (originalPalette[i] & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[i] -= ((0) | (0)<<5 | (1)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((31) | (0)<<5 | (0)<<10)) < (originalPalette[i] & ((31) | (0)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] += ((1) | (0)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (31)<<5 | (0)<<10)) < (originalPalette[i] & ((0) | (31)<<5 | (0)<<10))){
            ((unsigned short*)(0x5000200))[i] += ((0) | (1)<<5 | (0)<<10);
        }

        if((((unsigned short*)(0x5000200))[i] & ((0) | (0)<<5 | (31)<<10)) < (originalPalette[i] & ((0) | (0)<<5 | (31)<<10))){
            ((unsigned short*)(0x5000200))[i] += ((0) | (0)<<5 | (1)<<10);
        }
    }
}

void backgroundFade(unsigned short targetColor){
    int i;
    for(i=0; i<256; i++){

        if((((u16 *)0x5000000)[i] & ((31) | (0)<<5 | (0)<<10)) > (targetColor & ((31) | (0)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] -= ((1) | (0)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (31)<<5 | (0)<<10)) > (targetColor & ((0) | (31)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] -= ((0) | (1)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (0)<<5 | (31)<<10)) > (targetColor & ((0) | (0)<<5 | (31)<<10))){
            ((u16 *)0x5000000)[i] -= ((0) | (0)<<5 | (1)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((31) | (0)<<5 | (0)<<10)) < (targetColor & ((31) | (0)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] += ((1) | (0)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (31)<<5 | (0)<<10)) < (targetColor & ((0) | (31)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] += ((0) | (1)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (0)<<5 | (31)<<10)) < (targetColor & ((0) | (0)<<5 | (31)<<10))){
            ((u16 *)0x5000000)[i] += ((0) | (0)<<5 | (1)<<10);
        }
    }
}

void backgroundRestore(unsigned short const* originalPalette){
    int i;
    for(i=0; i<256; i++){

        if((((u16 *)0x5000000)[i] & ((31) | (0)<<5 | (0)<<10)) > (originalPalette[i] & ((31) | (0)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] -= ((1) | (0)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (31)<<5 | (0)<<10)) > (originalPalette[i] & ((0) | (31)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] -= ((0) | (1)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (0)<<5 | (31)<<10)) > (originalPalette[i] & ((0) | (0)<<5 | (31)<<10))){
            ((u16 *)0x5000000)[i] -= ((0) | (0)<<5 | (1)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((31) | (0)<<5 | (0)<<10)) < (originalPalette[i] & ((31) | (0)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] += ((1) | (0)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (31)<<5 | (0)<<10)) < (originalPalette[i] & ((0) | (31)<<5 | (0)<<10))){
            ((u16 *)0x5000000)[i] += ((0) | (1)<<5 | (0)<<10);
        }

        if((((u16 *)0x5000000)[i] & ((0) | (0)<<5 | (31)<<10)) < (originalPalette[i] & ((0) | (0)<<5 | (31)<<10))){
            ((u16 *)0x5000000)[i] += ((0) | (0)<<5 | (1)<<10);
        }
    }
}

void waitForVblank()
{
 while(*(volatile u16 *)0x4000006 > 160);
 while(*(volatile u16 *)0x4000006 < 160);
}


void flipPage()
{
    if(*(unsigned short *)0x4000000 & (1<<4))
    {
        *(unsigned short *)0x4000000 &= ~(1<<4);
        videoBuffer = backBuffer;
    }
    else
    {
        *(unsigned short *)0x4000000 |= (1<<4);
        videoBuffer = frontBuffer;
    }
}
