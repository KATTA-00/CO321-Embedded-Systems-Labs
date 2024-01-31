# 1 "ex3.c"
# 1 "/mnt/e/Education/Academic/3rd YEAR/5th Sem/CO321-Embedded Systems/labs/lab07//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "ex3.c"
# 10 "ex3.c"
# 1 "/usr/lib/avr/include/stdlib.h" 1 3
# 48 "/usr/lib/avr/include/stdlib.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4

# 216 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef int wchar_t;
# 49 "/usr/lib/avr/include/stdlib.h" 2 3
# 70 "/usr/lib/avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 116 "/usr/lib/avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 130 "/usr/lib/avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 153 "/usr/lib/avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 185 "/usr/lib/avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 218 "/usr/lib/avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 252 "/usr/lib/avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 264 "/usr/lib/avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 276 "/usr/lib/avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 288 "/usr/lib/avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 300 "/usr/lib/avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 348 "/usr/lib/avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);
# 361 "/usr/lib/avr/include/stdlib.h" 3
extern double atof(const char *__nptr);
# 383 "/usr/lib/avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 428 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *itoa (int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__itoa (int, char *, int);
 return __itoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__itoa_ncheck (int, char *, unsigned char);
 return __itoa_ncheck (__val, __s, __radix);
    }
}
# 473 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ltoa (long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ltoa (long, char *, int);
 return __ltoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ltoa_ncheck (long, char *, unsigned char);
 return __ltoa_ncheck (__val, __s, __radix);
    }
}
# 516 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *utoa (unsigned int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__utoa (unsigned int, char *, int);
 return __utoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__utoa_ncheck (unsigned int, char *, unsigned char);
 return __utoa_ncheck (__val, __s, __radix);
    }
}
# 558 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ultoa (unsigned long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ultoa (unsigned long, char *, int);
 return __ultoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ultoa_ncheck (unsigned long, char *, unsigned char);
 return __ultoa_ncheck (__val, __s, __radix);
    }
}
# 590 "/usr/lib/avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 649 "/usr/lib/avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 666 "/usr/lib/avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 685 "/usr/lib/avr/include/stdlib.h" 3
extern int atexit(void (*)(void));
extern int system (const char *);
extern char *getenv (const char *);
# 11 "ex3.c" 2
# 1 "/usr/lib/avr/include/avr/io.h" 1 3
# 99 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/lib/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/lib/avr/include/inttypes.h" 1 3
# 37 "/usr/lib/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/5.4.0/include/stdint.h" 3 4
# 1 "/usr/lib/avr/include/stdint.h" 1 3 4
# 125 "/usr/lib/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/usr/lib/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/usr/lib/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/5.4.0/include/stdint.h" 2 3 4
# 38 "/usr/lib/avr/include/inttypes.h" 2 3
# 77 "/usr/lib/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/lib/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/lib/avr/include/avr/io.h" 2 3
# 272 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/iom328p.h" 1 3
# 273 "/usr/lib/avr/include/avr/io.h" 2 3
# 627 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/portpins.h" 1 3
# 628 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/common.h" 1 3
# 630 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/version.h" 1 3
# 632 "/usr/lib/avr/include/avr/io.h" 2 3






# 1 "/usr/lib/avr/include/avr/fuse.h" 1 3
# 239 "/usr/lib/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "/usr/lib/avr/include/avr/io.h" 2 3


# 1 "/usr/lib/avr/include/avr/lock.h" 1 3
# 642 "/usr/lib/avr/include/avr/io.h" 2 3
# 12 "ex3.c" 2
# 1 "/usr/lib/avr/include/avr/pgmspace.h" 1 3
# 89 "/usr/lib/avr/include/avr/pgmspace.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 90 "/usr/lib/avr/include/avr/pgmspace.h" 2 3
# 1158 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1172 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));






extern void *memccpy_P(void *, const void *, int __val, size_t);
# 1188 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern void *memcpy_P(void *, const void *, size_t);






extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 1207 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1217 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcat_P(char *, const char *);
# 1233 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
# 1245 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
# 1258 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
# 1268 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcpy_P(char *, const char *);
# 1285 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));






extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
# 1305 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
# 1321 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcat_P (char *, const char *, size_t );
# 1334 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcpy_P (char *, const char *, size_t );
# 1346 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
# 1357 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1376 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1387 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncat_P(char *, const char *, size_t);
# 1401 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncpy_P(char *, const char *, size_t);
# 1416 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1427 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
# 1447 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strsep_P(char **__sp, const char * __delim);
# 1460 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1474 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
# 1496 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strtok_P(char *__s, const char * __delim);
# 1516 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strtok_rP(char *__s, const char * __delim, char **__last);
# 1529 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlen_PF(uint_farptr_t src) __attribute__((__const__));
# 1545 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strnlen_PF(uint_farptr_t src, size_t len) __attribute__((__const__));
# 1560 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern void *memcpy_PF(void *dest, uint_farptr_t src, size_t len);
# 1575 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcpy_PF(char *dest, uint_farptr_t src);
# 1595 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncpy_PF(char *dest, uint_farptr_t src, size_t len);
# 1611 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcat_PF(char *dest, uint_farptr_t src);
# 1632 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcat_PF(char *dst, uint_farptr_t src, size_t siz);
# 1649 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncat_PF(char *dest, uint_farptr_t src, size_t len);
# 1665 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1682 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1698 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcasecmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1716 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncasecmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1732 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strstr_PF(const char *s1, uint_farptr_t s2);
# 1744 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcpy_PF(char *dst, uint_farptr_t src, size_t siz);
# 1760 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));
# 1779 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t __strlen_P(const char *) __attribute__((__const__));
__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 13 "ex3.c" 2
# 1 "/usr/lib/avr/include/util/delay.h" 1 3
# 45 "/usr/lib/avr/include/util/delay.h" 3
# 1 "/usr/lib/avr/include/util/delay_basic.h" 1 3
# 40 "/usr/lib/avr/include/util/delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "/usr/lib/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/lib/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "/usr/lib/avr/include/util/delay.h" 2 3
# 1 "/usr/lib/avr/include/math.h" 1 3
# 127 "/usr/lib/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/lib/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "/usr/lib/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "/usr/lib/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "/usr/lib/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "/usr/lib/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "/usr/lib/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "/usr/lib/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "/usr/lib/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "/usr/lib/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "/usr/lib/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "/usr/lib/avr/include/util/delay.h" 2 3
# 86 "/usr/lib/avr/include/util/delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "/usr/lib/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "/usr/lib/avr/include/util/delay.h"
          16000000UL
# 174 "/usr/lib/avr/include/util/delay.h" 3
               ) / 1e3) * __ms;
# 184 "/usr/lib/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "/usr/lib/avr/include/util/delay.h" 3
}
# 254 "/usr/lib/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "/usr/lib/avr/include/util/delay.h"
          16000000UL
# 263 "/usr/lib/avr/include/util/delay.h" 3
               ) / 1e6) * __us;
# 273 "/usr/lib/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "/usr/lib/avr/include/util/delay.h" 3
}
# 14 "ex3.c" 2
# 1 "lcd.h" 1
# 297 "lcd.h"

# 297 "lcd.h"
extern void lcd_init(uint8_t dispAttr);






extern void lcd_clrscr(void);






extern void lcd_home(void);
# 321 "lcd.h"
extern void lcd_gotoxy(uint8_t x, uint8_t y);







extern void lcd_putc(char c);







extern void lcd_puts(const char *s);
# 346 "lcd.h"
extern void lcd_puts_p(const char *progmem_s);







extern void lcd_command(uint8_t cmd);
# 364 "lcd.h"
extern void lcd_data(uint8_t data);
# 15 "ex3.c" 2




char buffer[10 + 1] = "1234567890\0";
int key;
char input = '2';

void columnOutRowIn()
{





    
# 30 "ex3.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 30 "ex3.c"
        |= (1 << 
# 30 "ex3.c" 3
                 0
# 30 "ex3.c"
                      ) | (1 << 
# 30 "ex3.c" 3
                                1
# 30 "ex3.c"
                                     );
    
# 31 "ex3.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 31 "ex3.c"
        &= ~((1 << 
# 31 "ex3.c" 3
                   2
# 31 "ex3.c"
                        ) | (1 << 
# 31 "ex3.c" 3
                                  3
# 31 "ex3.c"
                                       ) | (1 << 
# 31 "ex3.c" 3
                                                 4
# 31 "ex3.c"
                                                      ) | (1 << 
# 31 "ex3.c" 3
                                                                5
# 31 "ex3.c"
                                                                     ));
    
# 32 "ex3.c" 3
   (*(volatile uint8_t *)((0x0A) + 0x20)) 
# 32 "ex3.c"
        |= (1 << 
# 32 "ex3.c" 3
                 6
# 32 "ex3.c"
                      ) | (1 << 
# 32 "ex3.c" 3
                                7
# 32 "ex3.c"
                                     );




    
# 37 "ex3.c" 3
   (*(volatile uint8_t *)((0x05) + 0x20)) 
# 37 "ex3.c"
         |= (1 << 
# 37 "ex3.c" 3
                  0
# 37 "ex3.c"
                       ) | (1 << 
# 37 "ex3.c" 3
                                 1
# 37 "ex3.c"
                                      );
    
# 38 "ex3.c" 3
   (*(volatile uint8_t *)((0x05) + 0x20)) 
# 38 "ex3.c"
         &= ~((1 << 
# 38 "ex3.c" 3
                    2
# 38 "ex3.c"
                         ) | (1 << 
# 38 "ex3.c" 3
                                   3
# 38 "ex3.c"
                                        ) | (1 << 
# 38 "ex3.c" 3
                                                  4
# 38 "ex3.c"
                                                       ) | (1 << 
# 38 "ex3.c" 3
                                                                 5
# 38 "ex3.c"
                                                                      ));
    
# 39 "ex3.c" 3
   (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 39 "ex3.c"
         |= (1 << 
# 39 "ex3.c" 3
                  6
# 39 "ex3.c"
                       ) | (1 << 
# 39 "ex3.c" 3
                                 7
# 39 "ex3.c"
                                      );

    _delay_ms(10);
}

void columnInRowOut()
{



    
# 49 "ex3.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 49 "ex3.c"
        |= (1 << 
# 49 "ex3.c" 3
                 2
# 49 "ex3.c"
                      ) | (1 << 
# 49 "ex3.c" 3
                                3
# 49 "ex3.c"
                                     ) | (1 << 
# 49 "ex3.c" 3
                                               4
# 49 "ex3.c"
                                                    ) | (1 << 
# 49 "ex3.c" 3
                                                              5
# 49 "ex3.c"
                                                                   );
    
# 50 "ex3.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 50 "ex3.c"
        &= ~((1 << 
# 50 "ex3.c" 3
                   0
# 50 "ex3.c"
                        ) | (1 << 
# 50 "ex3.c" 3
                                  1
# 50 "ex3.c"
                                       ));
    
# 51 "ex3.c" 3
   (*(volatile uint8_t *)((0x0A) + 0x20)) 
# 51 "ex3.c"
        &= ~((1 << 
# 51 "ex3.c" 3
                   6
# 51 "ex3.c"
                        ) | (1 << 
# 51 "ex3.c" 3
                                  7
# 51 "ex3.c"
                                       ));




    
# 56 "ex3.c" 3
   (*(volatile uint8_t *)((0x05) + 0x20)) 
# 56 "ex3.c"
         |= (1 << 
# 56 "ex3.c" 3
                  2
# 56 "ex3.c"
                       ) | (1 << 
# 56 "ex3.c" 3
                                 3
# 56 "ex3.c"
                                      ) | (1 << 
# 56 "ex3.c" 3
                                                4
# 56 "ex3.c"
                                                     ) | (1 << 
# 56 "ex3.c" 3
                                                               5
# 56 "ex3.c"
                                                                    );
    
# 57 "ex3.c" 3
   (*(volatile uint8_t *)((0x05) + 0x20)) 
# 57 "ex3.c"
         &= ~((1 << 
# 57 "ex3.c" 3
                    0
# 57 "ex3.c"
                         ) | (1 << 
# 57 "ex3.c" 3
                                   1
# 57 "ex3.c"
                                        ));
    
# 58 "ex3.c" 3
   (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 58 "ex3.c"
         &= ~((1 << 
# 58 "ex3.c" 3
                    6
# 58 "ex3.c"
                         ) | (1 << 
# 58 "ex3.c" 3
                                   7
# 58 "ex3.c"
                                        ));

    _delay_ms(10);
}

char getKeyPad()
{

    char key = ' ';
    char keyPad[4][4] = {
        {'1', '2', '3', 'A'},
        {'4', '5', '6', 'B'},
        {'7', '8', '9', 'C'},
        {'*', '0', '#', 'D'}};

    int i = -1;
    int j = -1;

    _delay_ms(10);
    columnOutRowIn();
    while (i == -1)
    {
        _delay_ms(10);
        if ((
# 81 "ex3.c" 3
            (*(volatile uint8_t *)((0x03) + 0x20)) 
# 81 "ex3.c"
                 & (1 << 
# 81 "ex3.c" 3
                         2
# 81 "ex3.c"
                              )))
        {
            i = 3;
        }
        else if ((
# 85 "ex3.c" 3
                 (*(volatile uint8_t *)((0x03) + 0x20)) 
# 85 "ex3.c"
                      & (1 << 
# 85 "ex3.c" 3
                              3
# 85 "ex3.c"
                                   )))
        {
            i = 2;
        }
        else if ((
# 89 "ex3.c" 3
                 (*(volatile uint8_t *)((0x03) + 0x20)) 
# 89 "ex3.c"
                      & (1 << 
# 89 "ex3.c" 3
                              4
# 89 "ex3.c"
                                   )))
        {
            i = 1;
        }
        else if ((
# 93 "ex3.c" 3
                 (*(volatile uint8_t *)((0x03) + 0x20)) 
# 93 "ex3.c"
                      & (1 << 
# 93 "ex3.c" 3
                              5
# 93 "ex3.c"
                                   )))
        {
            i = 0;
        }
    }

    _delay_ms(10);

    columnInRowOut();
    while (j == -1)
    {
        _delay_ms(10);
        while ((
# 105 "ex3.c" 3
               (*(volatile uint8_t *)((0x09) + 0x20)) 
# 105 "ex3.c"
                    & (1 << 
# 105 "ex3.c" 3
                            6
# 105 "ex3.c"
                                 )))
        {
            j = 3;
        }
        while ((
# 109 "ex3.c" 3
               (*(volatile uint8_t *)((0x09) + 0x20)) 
# 109 "ex3.c"
                    & (1 << 
# 109 "ex3.c" 3
                            7
# 109 "ex3.c"
                                 )))
        {
            j = 2;
        }
        while ((
# 113 "ex3.c" 3
               (*(volatile uint8_t *)((0x03) + 0x20)) 
# 113 "ex3.c"
                    & (1 << 
# 113 "ex3.c" 3
                            0
# 113 "ex3.c"
                                 )))
        {
            j = 1;
        }
        while ((
# 117 "ex3.c" 3
               (*(volatile uint8_t *)((0x03) + 0x20)) 
# 117 "ex3.c"
                    & (1 << 
# 117 "ex3.c" 3
                            1
# 117 "ex3.c"
                                 )))
        {
            j = 0;
        }
    }

    _delay_ms(100);
# 135 "ex3.c"
    return keyPad[i][j];
}

void EEPROMwrite(unsigned int address, char data)
{

    while (
# 141 "ex3.c" 3
          (*(volatile uint8_t *)((0x1F) + 0x20)) 
# 141 "ex3.c"
               & (1 << 
# 141 "ex3.c" 3
                       1
# 141 "ex3.c"
                           ))
        ;

    
# 144 "ex3.c" 3
   (*(volatile uint16_t *)((0x21) + 0x20)) 
# 144 "ex3.c"
        = address;
    
# 145 "ex3.c" 3
   (*(volatile uint8_t *)((0x20) + 0x20)) 
# 145 "ex3.c"
        = data;


    
# 148 "ex3.c" 3
   (*(volatile uint8_t *)((0x1F) + 0x20)) 
# 148 "ex3.c"
        |= (1 << 
# 148 "ex3.c" 3
                 2
# 148 "ex3.c"
                      );


    
# 151 "ex3.c" 3
   (*(volatile uint8_t *)((0x1F) + 0x20)) 
# 151 "ex3.c"
        |= (1 << 
# 151 "ex3.c" 3
                 1
# 151 "ex3.c"
                     );
}

void EEPROMwriteString(unsigned int address, char *sen)
{
    int i = 0;
    while (sen[i] != '\0')
    {
        EEPROMwrite(address + i, sen[i]);
        i++;
    }
    EEPROMwrite(address + i, '\0');
}

char EEPROMread(unsigned int address)
{

    while (
# 168 "ex3.c" 3
          (*(volatile uint8_t *)((0x1F) + 0x20)) 
# 168 "ex3.c"
               & (1 << 
# 168 "ex3.c" 3
                       1
# 168 "ex3.c"
                           ))
        ;

    
# 171 "ex3.c" 3
   (*(volatile uint16_t *)((0x21) + 0x20)) 
# 171 "ex3.c"
        = address;

    
# 173 "ex3.c" 3
   (*(volatile uint8_t *)((0x1F) + 0x20)) 
# 173 "ex3.c"
        |= (1 << 
# 173 "ex3.c" 3
                 0
# 173 "ex3.c"
                     );

    return 
# 175 "ex3.c" 3
          (*(volatile uint8_t *)((0x20) + 0x20))
# 175 "ex3.c"
              ;
}

void EEPROMreadString(unsigned int address, char *sen)
{
    int i = 0;
    char c = EEPROMread(address + i);
    sen[i] = c;

    while (c != '\0')
    {

        i++;
        c = EEPROMread(address + i);
        sen[i] = c;
    }
}

int main(void)
{


    lcd_init(0x0C);
    int row, col;

    while (1)
    {

        lcd_clrscr();


        lcd_gotoxy(0, 0);
        lcd_puts("Press 1 or 2\n");
        lcd_gotoxy(0, 1);
        lcd_puts("(Encrypt/Key)\n");



        _delay_ms(5000);
        lcd_clrscr();

        if (input == '1')
        {
            row = 0;
            col = 0;
            for (int i = 0; i < 10; i++)
            {



                lcd_putc(buffer[i]);

                _delay_ms(1000);

                col++;
                lcd_gotoxy(col, row);
            }

            _delay_ms(1000);
            lcd_clrscr();
            buffer[10] = '\0';

            lcd_puts("Processing...\n");
            _delay_ms(1000);
            lcd_clrscr();

            lcd_puts(buffer);

            lcd_gotoxy(0, 1);
            lcd_puts("Continue - #\n");



            _delay_ms(5000);

            lcd_clrscr();
        }
        else
        {
            lcd_gotoxy(0, 0);
            lcd_puts("Enter the Key\n");

            row = 0;
            col = 0;
            int len = 0;

            lcd_gotoxy(0, 1);
            row++;
            for (;;)
            {



                lcd_putc(buffer[len]);

                _delay_ms(1000);

                len++;

                if (buffer[len] == '0')
                    break;

                col++;
                lcd_gotoxy(col, row);
            }

            _delay_ms(1000);
            lcd_clrscr();
            buffer[10] = '\0';

            lcd_gotoxy(0, 0);
            lcd_puts("Key is Saved!!!\n");
            _delay_ms(4000);
        }
    }
}
