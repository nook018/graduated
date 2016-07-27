# 1 "main.cudafe1.gpu"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "main.cudafe1.gpu"
typedef char __nv_bool;
# 1425 "/usr/local/cuda-7.5/bin/..//include/driver_types.h"
struct CUstream_st;
# 27 "/usr/include/xlocale.h" 3
struct __locale_struct;
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3
struct timeval;
# 86 "/usr/include/wchar.h" 3
union _ZN11__mbstate_tUt_E;
# 83 "/usr/include/wchar.h" 3
struct __mbstate_t;
# 180 "/usr/include/libio.h" 3
enum __codecvt_result {
# 182 "/usr/include/libio.h" 3
__codecvt_ok,
# 183 "/usr/include/libio.h" 3
__codecvt_partial,
# 184 "/usr/include/libio.h" 3
__codecvt_error,
# 185 "/usr/include/libio.h" 3
__codecvt_noconv};
# 245 "/usr/include/libio.h" 3
struct _IO_FILE;
# 51 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
enum idtype_t {
# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
P_ALL,
# 53 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
P_PID,
# 54 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
P_PGID};
# 75 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct __pthread_internal_list;
# 92 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct _ZN15pthread_mutex_t17__pthread_mutex_sE;
# 91 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
union pthread_mutex_t;
# 190 "/usr/include/math.h" 3
enum _ZUt_ {
# 191 "/usr/include/math.h" 3
FP_NAN,
# 194 "/usr/include/math.h" 3
FP_INFINITE,
# 197 "/usr/include/math.h" 3
FP_ZERO,
# 200 "/usr/include/math.h" 3
FP_SUBNORMAL,
# 203 "/usr/include/math.h" 3
FP_NORMAL};
# 302 "/usr/include/math.h" 3
enum _LIB_VERSION_TYPE {
# 303 "/usr/include/math.h" 3
_IEEE_ = (-1),
# 304 "/usr/include/math.h" 3
_SVID_,
# 305 "/usr/include/math.h" 3
_XOPEN_,
# 306 "/usr/include/math.h" 3
_POSIX_,
# 307 "/usr/include/math.h" 3
_ISOC_};
# 4 "util.h"
enum Status {
# 4 "util.h"
SUCCESS,
# 4 "util.h"
ERROR};
# 24 "filter.h"
struct filter;
# 10 "filter_db.h"
struct clsFilterDB;
# 55 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
struct timezone;
# 91 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
enum __itimer_which {
# 94 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
ITIMER_REAL,
# 97 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
ITIMER_VIRTUAL,
# 101 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
ITIMER_PROF};
# 47 "/usr/include/ctype.h" 3
enum _ZUt0_ {
# 48 "/usr/include/ctype.h" 3
_ISupper = 256,
# 49 "/usr/include/ctype.h" 3
_ISlower = 512,
# 50 "/usr/include/ctype.h" 3
_ISalpha = 1024,
# 51 "/usr/include/ctype.h" 3
_ISdigit = 2048,
# 52 "/usr/include/ctype.h" 3
_ISxdigit = 4096,
# 53 "/usr/include/ctype.h" 3
_ISspace = 8192,
# 54 "/usr/include/ctype.h" 3
_ISprint = 16384,
# 55 "/usr/include/ctype.h" 3
_ISgraph = 32768,
# 56 "/usr/include/ctype.h" 3
_ISblank = 1,
# 57 "/usr/include/ctype.h" 3
_IScntrl,
# 58 "/usr/include/ctype.h" 3
_ISpunct = 4,
# 59 "/usr/include/ctype.h" 3
_ISalnum = 8};
# 33 "/usr/include/pthread.h" 3
enum _ZUt1_ {
# 34 "/usr/include/pthread.h" 3
PTHREAD_CREATE_JOINABLE,
# 36 "/usr/include/pthread.h" 3
PTHREAD_CREATE_DETACHED};
# 43 "/usr/include/pthread.h" 3
enum _ZUt2_ {
# 44 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_TIMED_NP,
# 45 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_RECURSIVE_NP,
# 46 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_ERRORCHECK_NP,
# 47 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_ADAPTIVE_NP,
# 50 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_NORMAL = 0,
# 51 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_RECURSIVE,
# 52 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_ERRORCHECK,
# 53 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_DEFAULT = 0,
# 57 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_FAST_NP = 0};
# 65 "/usr/include/pthread.h" 3
enum _ZUt3_ {
# 66 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_STALLED,
# 67 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_STALLED_NP = 0,
# 68 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_ROBUST,
# 69 "/usr/include/pthread.h" 3
PTHREAD_MUTEX_ROBUST_NP = 1};
# 77 "/usr/include/pthread.h" 3
enum _ZUt4_ {
# 78 "/usr/include/pthread.h" 3
PTHREAD_PRIO_NONE,
# 79 "/usr/include/pthread.h" 3
PTHREAD_PRIO_INHERIT,
# 80 "/usr/include/pthread.h" 3
PTHREAD_PRIO_PROTECT};
# 126 "/usr/include/pthread.h" 3
enum _ZUt5_ {
# 127 "/usr/include/pthread.h" 3
PTHREAD_RWLOCK_PREFER_READER_NP,
# 128 "/usr/include/pthread.h" 3
PTHREAD_RWLOCK_PREFER_WRITER_NP,
# 129 "/usr/include/pthread.h" 3
PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
# 130 "/usr/include/pthread.h" 3
PTHREAD_RWLOCK_DEFAULT_NP = 0};
# 167 "/usr/include/pthread.h" 3
enum _ZUt6_ {
# 168 "/usr/include/pthread.h" 3
PTHREAD_INHERIT_SCHED,
# 170 "/usr/include/pthread.h" 3
PTHREAD_EXPLICIT_SCHED};
# 177 "/usr/include/pthread.h" 3
enum _ZUt7_ {
# 178 "/usr/include/pthread.h" 3
PTHREAD_SCOPE_SYSTEM,
# 180 "/usr/include/pthread.h" 3
PTHREAD_SCOPE_PROCESS};
# 187 "/usr/include/pthread.h" 3
enum _ZUt8_ {
# 188 "/usr/include/pthread.h" 3
PTHREAD_PROCESS_PRIVATE,
# 190 "/usr/include/pthread.h" 3
PTHREAD_PROCESS_SHARED};
# 211 "/usr/include/pthread.h" 3
enum _ZUt9_ {
# 212 "/usr/include/pthread.h" 3
PTHREAD_CANCEL_ENABLE,
# 214 "/usr/include/pthread.h" 3
PTHREAD_CANCEL_DISABLE};
# 218 "/usr/include/pthread.h" 3
enum _ZUt10_ {
# 219 "/usr/include/pthread.h" 3
PTHREAD_CANCEL_DEFERRED,
# 221 "/usr/include/pthread.h" 3
PTHREAD_CANCEL_ASYNCHRONOUS};
# 72 "/usr/include/wctype.h" 3
enum _ZUt11_ {
# 73 "/usr/include/wctype.h" 3
__ISwupper,
# 74 "/usr/include/wctype.h" 3
__ISwlower,
# 75 "/usr/include/wctype.h" 3
__ISwalpha,
# 76 "/usr/include/wctype.h" 3
__ISwdigit,
# 77 "/usr/include/wctype.h" 3
__ISwxdigit,
# 78 "/usr/include/wctype.h" 3
__ISwspace,
# 79 "/usr/include/wctype.h" 3
__ISwprint,
# 80 "/usr/include/wctype.h" 3
__ISwgraph,
# 81 "/usr/include/wctype.h" 3
__ISwblank,
# 82 "/usr/include/wctype.h" 3
__ISwcntrl,
# 83 "/usr/include/wctype.h" 3
__ISwpunct,
# 84 "/usr/include/wctype.h" 3
__ISwalnum,
# 86 "/usr/include/wctype.h" 3
_ISwupper = 16777216,
# 87 "/usr/include/wctype.h" 3
_ISwlower = 33554432,
# 88 "/usr/include/wctype.h" 3
_ISwalpha = 67108864,
# 89 "/usr/include/wctype.h" 3
_ISwdigit = 134217728,
# 90 "/usr/include/wctype.h" 3
_ISwxdigit = 268435456,
# 91 "/usr/include/wctype.h" 3
_ISwspace = 536870912,
# 92 "/usr/include/wctype.h" 3
_ISwprint = 1073741824,
# 93 "/usr/include/wctype.h" 3
_ISwgraph = (-2147483647-1),
# 94 "/usr/include/wctype.h" 3
_ISwblank = 65536,
# 95 "/usr/include/wctype.h" 3
_ISwcntrl = 131072,
# 96 "/usr/include/wctype.h" 3
_ISwpunct = 262144,
# 97 "/usr/include/wctype.h" 3
_ISwalnum = 524288};
# 128 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_voidIvEUt_E {
# 128 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt9__is_voidIvE7__valueE = 1};
# 148 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIbEUt_E {
# 148 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIbE7__valueE = 1};
# 155 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIcEUt_E {
# 155 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIcE7__valueE = 1};
# 162 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIaEUt_E {
# 162 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIaE7__valueE = 1};
# 169 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIhEUt_E {
# 169 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIhE7__valueE = 1};
# 177 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIwEUt_E {
# 177 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIwE7__valueE = 1};
# 201 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIsEUt_E {
# 201 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIsE7__valueE = 1};
# 208 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerItEUt_E {
# 208 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerItE7__valueE = 1};
# 215 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIiEUt_E {
# 215 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIiE7__valueE = 1};
# 222 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIjEUt_E {
# 222 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIjE7__valueE = 1};
# 229 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIlEUt_E {
# 229 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIlE7__valueE = 1};
# 236 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerImEUt_E {
# 236 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerImE7__valueE = 1};
# 243 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIxEUt_E {
# 243 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIxE7__valueE = 1};
# 250 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIyEUt_E {
# 250 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIyE7__valueE = 1};
# 268 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIfEUt_E {
# 268 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIfE7__valueE = 1};
# 275 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIdEUt_E {
# 275 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIdE7__valueE = 1};
# 282 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIeEUt_E {
# 282 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIeE7__valueE = 1};
# 358 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIcEUt_E {
# 358 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt9__is_charIcE7__valueE = 1};
# 366 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIwEUt_E {
# 366 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt9__is_charIwE7__valueE = 1};
# 381 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIcEUt_E {
# 381 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIcE7__valueE = 1};
# 388 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIaEUt_E {
# 388 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIaE7__valueE = 1};
# 395 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIhEUt_E {
# 395 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIhE7__valueE = 1};
# 138 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIeEUt_E {
# 138 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIeE7__valueE};
# 138 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIdEUt_E {
# 138 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIdE7__valueE};
# 138 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIfEUt_E {
# 138 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIfE7__valueE};
# 233 "/usr/include/c++/4.8/bits/char_traits.h" 3
struct _ZSt11char_traitsIcE;
# 338 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5facetE;
# 338 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct __SO__NSt6locale5facetE;
# 475 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5_ImplE;
# 304 "/usr/include/c++/4.8/bits/locale_classes.h" 3
enum _ZNSt6localeUt_E {
# 304 "/usr/include/c++/4.8/bits/locale_classes.h" 3
_ZNSt6locale18_S_categories_sizeE = 12};
# 62 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZSt6locale;
# 51 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt13_Ios_Fmtflags {
# 53 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt12_S_boolalpha = 1,
# 54 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_dec,
# 55 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt8_S_fixed = 4,
# 56 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_hex = 8,
# 57 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt11_S_internal = 16,
# 58 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt7_S_left = 32,
# 59 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_oct = 64,
# 60 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt8_S_right = 128,
# 61 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt13_S_scientific = 256,
# 62 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt11_S_showbase = 512,
# 63 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt12_S_showpoint = 1024,
# 64 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt10_S_showpos = 2048,
# 65 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt9_S_skipws = 4096,
# 66 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt10_S_unitbuf = 8192,
# 67 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt12_S_uppercase = 16384,
# 68 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt14_S_adjustfield = 176,
# 69 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt12_S_basefield = 74,
# 70 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt13_S_floatfield = 260,
# 71 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt19_S_ios_fmtflags_end = 65536,
# 72 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt19_S_ios_fmtflags_max = 2147483647,
# 73 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt19_S_ios_fmtflags_min = (-2147483647-1)};
# 105 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt13_Ios_Openmode {
# 107 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_app = 1,
# 108 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_ate,
# 109 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_bin = 4,
# 110 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt5_S_in = 8,
# 111 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_out = 16,
# 112 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt8_S_trunc = 32,
# 113 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt19_S_ios_openmode_end = 65536,
# 114 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt19_S_ios_openmode_max = 2147483647,
# 115 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt19_S_ios_openmode_min = (-2147483647-1)};
# 147 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt12_Ios_Iostate {
# 149 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt10_S_goodbit,
# 150 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt9_S_badbit,
# 151 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt9_S_eofbit,
# 152 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt10_S_failbit = 4,
# 153 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt18_S_ios_iostate_end = 65536,
# 154 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt18_S_ios_iostate_max = 2147483647,
# 155 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt18_S_ios_iostate_min = (-2147483647-1)};
# 187 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt12_Ios_Seekdir {
# 189 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_beg,
# 190 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_cur,
# 191 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt6_S_end,
# 192 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt18_S_ios_seekdir_end = 65536};
# 425 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZNSt8ios_base5eventE {
# 427 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZNSt8ios_base11erase_eventE,
# 428 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZNSt8ios_base11imbue_eventE,
# 429 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZNSt8ios_base13copyfmt_eventE};
# 466 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base14_Callback_listE;
# 505 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE;
# 517 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZNSt8ios_baseUt_E {
# 517 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZNSt8ios_base18_S_local_word_sizeE = 8};
# 539 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base4InitE;
# 205 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZSt8ios_base;
# 120 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt19istreambuf_iteratorIcSt11char_traitsIcEE;
# 123 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt19ostreambuf_iteratorIcSt11char_traitsIcEE;
# 80 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt15basic_streambufIcSt11char_traitsIcEE;
# 41 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/ctype_base.h" 3
struct _ZSt10ctype_base;
# 674 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt5ctypeIcE;
# 1524 "/usr/include/c++/4.8/bits/locale_facets.h" 3
enum _ZNSt10__num_baseUt_E {
# 1525 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base9_S_ominusE,
# 1526 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base8_S_oplusE,
# 1527 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_oxE,
# 1528 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_oXE,
# 1529 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base10_S_odigitsE,
# 1530 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base14_S_odigits_endE = 20,
# 1531 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base11_S_oudigitsE = 20,
# 1532 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base15_S_oudigits_endE = 36,
# 1533 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_oeE = 18,
# 1534 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_oEE = 34,
# 1535 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base7_S_oendE = 36};
# 1550 "/usr/include/c++/4.8/bits/locale_facets.h" 3
enum _ZNSt10__num_baseUt0_E {
# 1551 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base9_S_iminusE,
# 1552 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base8_S_iplusE,
# 1553 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_ixE,
# 1554 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_iXE,
# 1555 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base8_S_izeroE,
# 1556 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_ieE = 18,
# 1557 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base5_S_iEE = 24,
# 1558 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10__num_base7_S_iendE = 26};
# 1915 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE;
# 2254 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE;
# 77 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt9basic_iosIcSt11char_traitsIcEE;
# 86 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSo;
# 86 "/usr/include/c++/4.8/iosfwd" 3
struct __SO__So;
# 49 "/usr/include/c++/4.8/bits/codecvt.h" 3
enum _ZNSt12codecvt_base6resultE {
# 51 "/usr/include/c++/4.8/bits/codecvt.h" 3
_ZNSt12codecvt_base2okE,
# 52 "/usr/include/c++/4.8/bits/codecvt.h" 3
_ZNSt12codecvt_base7partialE,
# 53 "/usr/include/c++/4.8/bits/codecvt.h" 3
_ZNSt12codecvt_base5errorE,
# 54 "/usr/include/c++/4.8/bits/codecvt.h" 3
_ZNSt12codecvt_base6noconvE};
# 340 "/usr/include/c++/4.8/bits/codecvt.h" 3
struct _ZSt7codecvtIcc11__mbstate_tE;
# 53 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/basic_file.h" 3
struct _ZSt12__basic_fileIcE;
# 108 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt13basic_filebufIcSt11char_traitsIcEE;
# 114 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE;
# 153 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
union _ZZ10__signbitlEUt_;
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3
typedef unsigned long size_t;
# 1 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 1 3
# 38 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 3
# 1 "/usr/local/cuda-7.5/bin/..//include/host_defines.h" 1 3
# 39 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 2 3





typedef __attribute__((device_builtin_texture_type)) unsigned long long __texture_type__;
typedef __attribute__((device_builtin_surface_type)) unsigned long long __surface_type__;
# 180 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 3
extern __attribute__((device)) void* malloc(size_t);
extern __attribute__((device)) void free(void*);

extern __attribute__((device)) void __assertfail(
  const void *message,
  const void *file,
  unsigned int line,
  const void *function,
  size_t charsize);
# 233 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 3
static __attribute__((device)) void __assert_fail(
  const char *__assertion,
  const char *__file,
  unsigned int __line,
  const char *__function)
{
  __assertfail(
    (const void *)__assertion,
    (const void *)__file,
                  __line,
    (const void *)__function,
    sizeof(char));
}
# 263 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 3
# 1 "/usr/local/cuda-7.5/bin/..//include/builtin_types.h" 1 3
# 56 "/usr/local/cuda-7.5/bin/..//include/builtin_types.h" 3
# 1 "/usr/local/cuda-7.5/include/device_types.h" 1 3
# 53 "/usr/local/cuda-7.5/include/device_types.h" 3
# 1 "/usr/local/cuda-7.5/include/host_defines.h" 1 3
# 54 "/usr/local/cuda-7.5/include/device_types.h" 2 3







enum __attribute__((device_builtin)) cudaRoundMode
{
    cudaRoundNearest,
    cudaRoundZero,
    cudaRoundPosInf,
    cudaRoundMinInf
};
# 57 "/usr/local/cuda-7.5/bin/..//include/builtin_types.h" 2 3


# 1 "/usr/local/cuda-7.5/include/driver_types.h" 1 3
# 151 "/usr/local/cuda-7.5/include/driver_types.h" 3
enum __attribute__((device_builtin)) cudaError
{





    cudaSuccess = 0,





    cudaErrorMissingConfiguration = 1,





    cudaErrorMemoryAllocation = 2,





    cudaErrorInitializationError = 3,
# 186 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorLaunchFailure = 4,
# 195 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorPriorLaunchFailure = 5,
# 205 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorLaunchTimeout = 6,
# 214 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorLaunchOutOfResources = 7,





    cudaErrorInvalidDeviceFunction = 8,
# 229 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorInvalidConfiguration = 9,





    cudaErrorInvalidDevice = 10,





    cudaErrorInvalidValue = 11,





    cudaErrorInvalidPitchValue = 12,





    cudaErrorInvalidSymbol = 13,




    cudaErrorMapBufferObjectFailed = 14,




    cudaErrorUnmapBufferObjectFailed = 15,





    cudaErrorInvalidHostPointer = 16,





    cudaErrorInvalidDevicePointer = 17,





    cudaErrorInvalidTexture = 18,





    cudaErrorInvalidTextureBinding = 19,






    cudaErrorInvalidChannelDescriptor = 20,





    cudaErrorInvalidMemcpyDirection = 21,
# 310 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorAddressOfConstant = 22,
# 319 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorTextureFetchFailed = 23,
# 328 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorTextureNotBound = 24,
# 337 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorSynchronizationError = 25,





    cudaErrorInvalidFilterSetting = 26,





    cudaErrorInvalidNormSetting = 27,







    cudaErrorMixedDeviceExecution = 28,






    cudaErrorCudartUnloading = 29,




    cudaErrorUnknown = 30,







    cudaErrorNotYetImplemented = 31,
# 386 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorMemoryValueTooLarge = 32,






    cudaErrorInvalidResourceHandle = 33,







    cudaErrorNotReady = 34,






    cudaErrorInsufficientDriver = 35,
# 421 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorSetOnActiveProcess = 36,





    cudaErrorInvalidSurface = 37,





    cudaErrorNoDevice = 38,





    cudaErrorECCUncorrectable = 39,




    cudaErrorSharedObjectSymbolNotFound = 40,




    cudaErrorSharedObjectInitFailed = 41,





    cudaErrorUnsupportedLimit = 42,





    cudaErrorDuplicateVariableName = 43,





    cudaErrorDuplicateTextureName = 44,





    cudaErrorDuplicateSurfaceName = 45,
# 483 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorDevicesUnavailable = 46,




    cudaErrorInvalidKernelImage = 47,







    cudaErrorNoKernelImageForDevice = 48,
# 509 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorIncompatibleDriverContext = 49,






    cudaErrorPeerAccessAlreadyEnabled = 50,






    cudaErrorPeerAccessNotEnabled = 51,





    cudaErrorDeviceAlreadyInUse = 54,






    cudaErrorProfilerDisabled = 55,







    cudaErrorProfilerNotInitialized = 56,






    cudaErrorProfilerAlreadyStarted = 57,






     cudaErrorProfilerAlreadyStopped = 58,







    cudaErrorAssert = 59,






    cudaErrorTooManyPeers = 60,





    cudaErrorHostMemoryAlreadyRegistered = 61,





    cudaErrorHostMemoryNotRegistered = 62,




    cudaErrorOperatingSystem = 63,





    cudaErrorPeerAccessUnsupported = 64,






    cudaErrorLaunchMaxDepthExceeded = 65,







    cudaErrorLaunchFileScopedTex = 66,







    cudaErrorLaunchFileScopedSurf = 67,
# 634 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorSyncDepthExceeded = 68,
# 646 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorLaunchPendingCountExceeded = 69,




    cudaErrorNotPermitted = 70,





    cudaErrorNotSupported = 71,
# 666 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorHardwareStackError = 72,







    cudaErrorIllegalInstruction = 73,
# 683 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorMisalignedAddress = 74,
# 694 "/usr/local/cuda-7.5/include/driver_types.h" 3
    cudaErrorInvalidAddressSpace = 75,







    cudaErrorInvalidPc = 76,







    cudaErrorIllegalAddress = 77,





    cudaErrorInvalidPtx = 78,




    cudaErrorInvalidGraphicsContext = 79,





    cudaErrorStartupFailure = 0x7f,







    cudaErrorApiFailureBase = 10000
};




enum __attribute__((device_builtin)) cudaChannelFormatKind
{
    cudaChannelFormatKindSigned = 0,
    cudaChannelFormatKindUnsigned = 1,
    cudaChannelFormatKindFloat = 2,
    cudaChannelFormatKindNone = 3
};




struct __attribute__((device_builtin)) cudaChannelFormatDesc
{
    int x;
    int y;
    int z;
    int w;
    enum cudaChannelFormatKind f;
};




typedef struct cudaArray *cudaArray_t;




typedef const struct cudaArray *cudaArray_const_t;

struct cudaArray;




typedef struct cudaMipmappedArray *cudaMipmappedArray_t;




typedef const struct cudaMipmappedArray *cudaMipmappedArray_const_t;

struct cudaMipmappedArray;




enum __attribute__((device_builtin)) cudaMemoryType
{
    cudaMemoryTypeHost = 1,
    cudaMemoryTypeDevice = 2
};




enum __attribute__((device_builtin)) cudaMemcpyKind
{
    cudaMemcpyHostToHost = 0,
    cudaMemcpyHostToDevice = 1,
    cudaMemcpyDeviceToHost = 2,
    cudaMemcpyDeviceToDevice = 3,
    cudaMemcpyDefault = 4
};






struct __attribute__((device_builtin)) cudaPitchedPtr
{
    void *ptr;
    size_t pitch;
    size_t xsize;
    size_t ysize;
};






struct __attribute__((device_builtin)) cudaExtent
{
    size_t width;
    size_t height;
    size_t depth;
};






struct __attribute__((device_builtin)) cudaPos
{
    size_t x;
    size_t y;
    size_t z;
};




struct __attribute__((device_builtin)) cudaMemcpy3DParms
{
    cudaArray_t srcArray;
    struct cudaPos srcPos;
    struct cudaPitchedPtr srcPtr;

    cudaArray_t dstArray;
    struct cudaPos dstPos;
    struct cudaPitchedPtr dstPtr;

    struct cudaExtent extent;
    enum cudaMemcpyKind kind;
};




struct __attribute__((device_builtin)) cudaMemcpy3DPeerParms
{
    cudaArray_t srcArray;
    struct cudaPos srcPos;
    struct cudaPitchedPtr srcPtr;
    int srcDevice;

    cudaArray_t dstArray;
    struct cudaPos dstPos;
    struct cudaPitchedPtr dstPtr;
    int dstDevice;

    struct cudaExtent extent;
};




struct cudaGraphicsResource;




enum __attribute__((device_builtin)) cudaGraphicsRegisterFlags
{
    cudaGraphicsRegisterFlagsNone = 0,
    cudaGraphicsRegisterFlagsReadOnly = 1,
    cudaGraphicsRegisterFlagsWriteDiscard = 2,
    cudaGraphicsRegisterFlagsSurfaceLoadStore = 4,
    cudaGraphicsRegisterFlagsTextureGather = 8
};




enum __attribute__((device_builtin)) cudaGraphicsMapFlags
{
    cudaGraphicsMapFlagsNone = 0,
    cudaGraphicsMapFlagsReadOnly = 1,
    cudaGraphicsMapFlagsWriteDiscard = 2
};




enum __attribute__((device_builtin)) cudaGraphicsCubeFace
{
    cudaGraphicsCubeFacePositiveX = 0x00,
    cudaGraphicsCubeFaceNegativeX = 0x01,
    cudaGraphicsCubeFacePositiveY = 0x02,
    cudaGraphicsCubeFaceNegativeY = 0x03,
    cudaGraphicsCubeFacePositiveZ = 0x04,
    cudaGraphicsCubeFaceNegativeZ = 0x05
};




enum __attribute__((device_builtin)) cudaResourceType
{
    cudaResourceTypeArray = 0x00,
    cudaResourceTypeMipmappedArray = 0x01,
    cudaResourceTypeLinear = 0x02,
    cudaResourceTypePitch2D = 0x03
};




enum __attribute__((device_builtin)) cudaResourceViewFormat
{
    cudaResViewFormatNone = 0x00,
    cudaResViewFormatUnsignedChar1 = 0x01,
    cudaResViewFormatUnsignedChar2 = 0x02,
    cudaResViewFormatUnsignedChar4 = 0x03,
    cudaResViewFormatSignedChar1 = 0x04,
    cudaResViewFormatSignedChar2 = 0x05,
    cudaResViewFormatSignedChar4 = 0x06,
    cudaResViewFormatUnsignedShort1 = 0x07,
    cudaResViewFormatUnsignedShort2 = 0x08,
    cudaResViewFormatUnsignedShort4 = 0x09,
    cudaResViewFormatSignedShort1 = 0x0a,
    cudaResViewFormatSignedShort2 = 0x0b,
    cudaResViewFormatSignedShort4 = 0x0c,
    cudaResViewFormatUnsignedInt1 = 0x0d,
    cudaResViewFormatUnsignedInt2 = 0x0e,
    cudaResViewFormatUnsignedInt4 = 0x0f,
    cudaResViewFormatSignedInt1 = 0x10,
    cudaResViewFormatSignedInt2 = 0x11,
    cudaResViewFormatSignedInt4 = 0x12,
    cudaResViewFormatHalf1 = 0x13,
    cudaResViewFormatHalf2 = 0x14,
    cudaResViewFormatHalf4 = 0x15,
    cudaResViewFormatFloat1 = 0x16,
    cudaResViewFormatFloat2 = 0x17,
    cudaResViewFormatFloat4 = 0x18,
    cudaResViewFormatUnsignedBlockCompressed1 = 0x19,
    cudaResViewFormatUnsignedBlockCompressed2 = 0x1a,
    cudaResViewFormatUnsignedBlockCompressed3 = 0x1b,
    cudaResViewFormatUnsignedBlockCompressed4 = 0x1c,
    cudaResViewFormatSignedBlockCompressed4 = 0x1d,
    cudaResViewFormatUnsignedBlockCompressed5 = 0x1e,
    cudaResViewFormatSignedBlockCompressed5 = 0x1f,
    cudaResViewFormatUnsignedBlockCompressed6H = 0x20,
    cudaResViewFormatSignedBlockCompressed6H = 0x21,
    cudaResViewFormatUnsignedBlockCompressed7 = 0x22
};




struct __attribute__((device_builtin)) cudaResourceDesc {
 enum cudaResourceType resType;

 union {
  struct {
   cudaArray_t array;
  } array;
        struct {
            cudaMipmappedArray_t mipmap;
        } mipmap;
  struct {
   void *devPtr;
   struct cudaChannelFormatDesc desc;
   size_t sizeInBytes;
  } linear;
  struct {
   void *devPtr;
   struct cudaChannelFormatDesc desc;
   size_t width;
   size_t height;
   size_t pitchInBytes;
  } pitch2D;
 } res;
};




struct __attribute__((device_builtin)) cudaResourceViewDesc
{
    enum cudaResourceViewFormat format;
    size_t width;
    size_t height;
    size_t depth;
    unsigned int firstMipmapLevel;
    unsigned int lastMipmapLevel;
    unsigned int firstLayer;
    unsigned int lastLayer;
};




struct __attribute__((device_builtin)) cudaPointerAttributes
{




    enum cudaMemoryType memoryType;
# 1034 "/usr/local/cuda-7.5/include/driver_types.h" 3
    int device;





    void *devicePointer;





    void *hostPointer;




    int isManaged;
};




struct __attribute__((device_builtin)) cudaFuncAttributes
{





   size_t sharedSizeBytes;





   size_t constSizeBytes;




   size_t localSizeBytes;






   int maxThreadsPerBlock;




   int numRegs;






   int ptxVersion;






   int binaryVersion;





   int cacheModeCA;
};




enum __attribute__((device_builtin)) cudaFuncCache
{
    cudaFuncCachePreferNone = 0,
    cudaFuncCachePreferShared = 1,
    cudaFuncCachePreferL1 = 2,
    cudaFuncCachePreferEqual = 3
};





enum __attribute__((device_builtin)) cudaSharedMemConfig
{
    cudaSharedMemBankSizeDefault = 0,
    cudaSharedMemBankSizeFourByte = 1,
    cudaSharedMemBankSizeEightByte = 2
};




enum __attribute__((device_builtin)) cudaComputeMode
{
    cudaComputeModeDefault = 0,
    cudaComputeModeExclusive = 1,
    cudaComputeModeProhibited = 2,
    cudaComputeModeExclusiveProcess = 3
};




enum __attribute__((device_builtin)) cudaLimit
{
    cudaLimitStackSize = 0x00,
    cudaLimitPrintfFifoSize = 0x01,
    cudaLimitMallocHeapSize = 0x02,
    cudaLimitDevRuntimeSyncDepth = 0x03,
    cudaLimitDevRuntimePendingLaunchCount = 0x04
};




enum __attribute__((device_builtin)) cudaOutputMode
{
    cudaKeyValuePair = 0x00,
    cudaCSV = 0x01
};




enum __attribute__((device_builtin)) cudaDeviceAttr
{
    cudaDevAttrMaxThreadsPerBlock = 1,
    cudaDevAttrMaxBlockDimX = 2,
    cudaDevAttrMaxBlockDimY = 3,
    cudaDevAttrMaxBlockDimZ = 4,
    cudaDevAttrMaxGridDimX = 5,
    cudaDevAttrMaxGridDimY = 6,
    cudaDevAttrMaxGridDimZ = 7,
    cudaDevAttrMaxSharedMemoryPerBlock = 8,
    cudaDevAttrTotalConstantMemory = 9,
    cudaDevAttrWarpSize = 10,
    cudaDevAttrMaxPitch = 11,
    cudaDevAttrMaxRegistersPerBlock = 12,
    cudaDevAttrClockRate = 13,
    cudaDevAttrTextureAlignment = 14,
    cudaDevAttrGpuOverlap = 15,
    cudaDevAttrMultiProcessorCount = 16,
    cudaDevAttrKernelExecTimeout = 17,
    cudaDevAttrIntegrated = 18,
    cudaDevAttrCanMapHostMemory = 19,
    cudaDevAttrComputeMode = 20,
    cudaDevAttrMaxTexture1DWidth = 21,
    cudaDevAttrMaxTexture2DWidth = 22,
    cudaDevAttrMaxTexture2DHeight = 23,
    cudaDevAttrMaxTexture3DWidth = 24,
    cudaDevAttrMaxTexture3DHeight = 25,
    cudaDevAttrMaxTexture3DDepth = 26,
    cudaDevAttrMaxTexture2DLayeredWidth = 27,
    cudaDevAttrMaxTexture2DLayeredHeight = 28,
    cudaDevAttrMaxTexture2DLayeredLayers = 29,
    cudaDevAttrSurfaceAlignment = 30,
    cudaDevAttrConcurrentKernels = 31,
    cudaDevAttrEccEnabled = 32,
    cudaDevAttrPciBusId = 33,
    cudaDevAttrPciDeviceId = 34,
    cudaDevAttrTccDriver = 35,
    cudaDevAttrMemoryClockRate = 36,
    cudaDevAttrGlobalMemoryBusWidth = 37,
    cudaDevAttrL2CacheSize = 38,
    cudaDevAttrMaxThreadsPerMultiProcessor = 39,
    cudaDevAttrAsyncEngineCount = 40,
    cudaDevAttrUnifiedAddressing = 41,
    cudaDevAttrMaxTexture1DLayeredWidth = 42,
    cudaDevAttrMaxTexture1DLayeredLayers = 43,
    cudaDevAttrMaxTexture2DGatherWidth = 45,
    cudaDevAttrMaxTexture2DGatherHeight = 46,
    cudaDevAttrMaxTexture3DWidthAlt = 47,
    cudaDevAttrMaxTexture3DHeightAlt = 48,
    cudaDevAttrMaxTexture3DDepthAlt = 49,
    cudaDevAttrPciDomainId = 50,
    cudaDevAttrTexturePitchAlignment = 51,
    cudaDevAttrMaxTextureCubemapWidth = 52,
    cudaDevAttrMaxTextureCubemapLayeredWidth = 53,
    cudaDevAttrMaxTextureCubemapLayeredLayers = 54,
    cudaDevAttrMaxSurface1DWidth = 55,
    cudaDevAttrMaxSurface2DWidth = 56,
    cudaDevAttrMaxSurface2DHeight = 57,
    cudaDevAttrMaxSurface3DWidth = 58,
    cudaDevAttrMaxSurface3DHeight = 59,
    cudaDevAttrMaxSurface3DDepth = 60,
    cudaDevAttrMaxSurface1DLayeredWidth = 61,
    cudaDevAttrMaxSurface1DLayeredLayers = 62,
    cudaDevAttrMaxSurface2DLayeredWidth = 63,
    cudaDevAttrMaxSurface2DLayeredHeight = 64,
    cudaDevAttrMaxSurface2DLayeredLayers = 65,
    cudaDevAttrMaxSurfaceCubemapWidth = 66,
    cudaDevAttrMaxSurfaceCubemapLayeredWidth = 67,
    cudaDevAttrMaxSurfaceCubemapLayeredLayers = 68,
    cudaDevAttrMaxTexture1DLinearWidth = 69,
    cudaDevAttrMaxTexture2DLinearWidth = 70,
    cudaDevAttrMaxTexture2DLinearHeight = 71,
    cudaDevAttrMaxTexture2DLinearPitch = 72,
    cudaDevAttrMaxTexture2DMipmappedWidth = 73,
    cudaDevAttrMaxTexture2DMipmappedHeight = 74,
    cudaDevAttrComputeCapabilityMajor = 75,
    cudaDevAttrComputeCapabilityMinor = 76,
    cudaDevAttrMaxTexture1DMipmappedWidth = 77,
    cudaDevAttrStreamPrioritiesSupported = 78,
    cudaDevAttrGlobalL1CacheSupported = 79,
    cudaDevAttrLocalL1CacheSupported = 80,
    cudaDevAttrMaxSharedMemoryPerMultiprocessor = 81,
    cudaDevAttrMaxRegistersPerMultiprocessor = 82,
    cudaDevAttrManagedMemory = 83,
    cudaDevAttrIsMultiGpuBoard = 84,
    cudaDevAttrMultiGpuBoardGroupID = 85
};




struct __attribute__((device_builtin)) cudaDeviceProp
{
    char name[256];
    size_t totalGlobalMem;
    size_t sharedMemPerBlock;
    int regsPerBlock;
    int warpSize;
    size_t memPitch;
    int maxThreadsPerBlock;
    int maxThreadsDim[3];
    int maxGridSize[3];
    int clockRate;
    size_t totalConstMem;
    int major;
    int minor;
    size_t textureAlignment;
    size_t texturePitchAlignment;
    int deviceOverlap;
    int multiProcessorCount;
    int kernelExecTimeoutEnabled;
    int integrated;
    int canMapHostMemory;
    int computeMode;
    int maxTexture1D;
    int maxTexture1DMipmap;
    int maxTexture1DLinear;
    int maxTexture2D[2];
    int maxTexture2DMipmap[2];
    int maxTexture2DLinear[3];
    int maxTexture2DGather[2];
    int maxTexture3D[3];
    int maxTexture3DAlt[3];
    int maxTextureCubemap;
    int maxTexture1DLayered[2];
    int maxTexture2DLayered[3];
    int maxTextureCubemapLayered[2];
    int maxSurface1D;
    int maxSurface2D[2];
    int maxSurface3D[3];
    int maxSurface1DLayered[2];
    int maxSurface2DLayered[3];
    int maxSurfaceCubemap;
    int maxSurfaceCubemapLayered[2];
    size_t surfaceAlignment;
    int concurrentKernels;
    int ECCEnabled;
    int pciBusID;
    int pciDeviceID;
    int pciDomainID;
    int tccDriver;
    int asyncEngineCount;
    int unifiedAddressing;
    int memoryClockRate;
    int memoryBusWidth;
    int l2CacheSize;
    int maxThreadsPerMultiProcessor;
    int streamPrioritiesSupported;
    int globalL1CacheSupported;
    int localL1CacheSupported;
    size_t sharedMemPerMultiprocessor;
    int regsPerMultiprocessor;
    int managedMemory;
    int isMultiGpuBoard;
    int multiGpuBoardGroupID;
};
# 1398 "/usr/local/cuda-7.5/include/driver_types.h" 3
typedef __attribute__((device_builtin)) struct __attribute__((device_builtin)) cudaIpcEventHandle_st
{
    char reserved[64];
}cudaIpcEventHandle_t;




typedef __attribute__((device_builtin)) struct __attribute__((device_builtin)) cudaIpcMemHandle_st
{
    char reserved[64];
}cudaIpcMemHandle_t;
# 1420 "/usr/local/cuda-7.5/include/driver_types.h" 3
typedef __attribute__((device_builtin)) enum cudaError cudaError_t;




typedef __attribute__((device_builtin)) struct CUstream_st *cudaStream_t;




typedef __attribute__((device_builtin)) struct CUevent_st *cudaEvent_t;




typedef __attribute__((device_builtin)) struct cudaGraphicsResource *cudaGraphicsResource_t;




typedef __attribute__((device_builtin)) struct CUuuid_st cudaUUID_t;




typedef __attribute__((device_builtin)) enum cudaOutputMode cudaOutputMode_t;
# 60 "/usr/local/cuda-7.5/bin/..//include/builtin_types.h" 2 3


# 1 "/usr/local/cuda-7.5/include/surface_types.h" 1 3
# 59 "/usr/local/cuda-7.5/include/surface_types.h" 3
# 1 "/usr/local/cuda-7.5/include/driver_types.h" 1 3
# 60 "/usr/local/cuda-7.5/include/surface_types.h" 2 3
# 84 "/usr/local/cuda-7.5/include/surface_types.h" 3
enum __attribute__((device_builtin)) cudaSurfaceBoundaryMode
{
    cudaBoundaryModeZero = 0,
    cudaBoundaryModeClamp = 1,
    cudaBoundaryModeTrap = 2
};




enum __attribute__((device_builtin)) cudaSurfaceFormatMode
{
    cudaFormatModeForced = 0,
    cudaFormatModeAuto = 1
};




struct __attribute__((device_builtin)) surfaceReference
{



    struct cudaChannelFormatDesc channelDesc;
};




typedef __attribute__((device_builtin)) unsigned long long cudaSurfaceObject_t;
# 63 "/usr/local/cuda-7.5/bin/..//include/builtin_types.h" 2 3
# 1 "/usr/local/cuda-7.5/include/texture_types.h" 1 3
# 84 "/usr/local/cuda-7.5/include/texture_types.h" 3
enum __attribute__((device_builtin)) cudaTextureAddressMode
{
    cudaAddressModeWrap = 0,
    cudaAddressModeClamp = 1,
    cudaAddressModeMirror = 2,
    cudaAddressModeBorder = 3
};




enum __attribute__((device_builtin)) cudaTextureFilterMode
{
    cudaFilterModePoint = 0,
    cudaFilterModeLinear = 1
};




enum __attribute__((device_builtin)) cudaTextureReadMode
{
    cudaReadModeElementType = 0,
    cudaReadModeNormalizedFloat = 1
};




struct __attribute__((device_builtin)) textureReference
{



    int normalized;



    enum cudaTextureFilterMode filterMode;



    enum cudaTextureAddressMode addressMode[3];



    struct cudaChannelFormatDesc channelDesc;



    int sRGB;



    unsigned int maxAnisotropy;



    enum cudaTextureFilterMode mipmapFilterMode;



    float mipmapLevelBias;



    float minMipmapLevelClamp;



    float maxMipmapLevelClamp;
    int __cudaReserved[15];
};




struct __attribute__((device_builtin)) cudaTextureDesc
{



    enum cudaTextureAddressMode addressMode[3];



    enum cudaTextureFilterMode filterMode;



    enum cudaTextureReadMode readMode;



    int sRGB;



    int normalizedCoords;



    unsigned int maxAnisotropy;



    enum cudaTextureFilterMode mipmapFilterMode;



    float mipmapLevelBias;



    float minMipmapLevelClamp;



    float maxMipmapLevelClamp;
};




typedef __attribute__((device_builtin)) unsigned long long cudaTextureObject_t;
# 64 "/usr/local/cuda-7.5/bin/..//include/builtin_types.h" 2 3
# 1 "/usr/local/cuda-7.5/include/vector_types.h" 1 3
# 61 "/usr/local/cuda-7.5/include/vector_types.h" 3
# 1 "/usr/local/cuda-7.5/include/builtin_types.h" 1 3
# 56 "/usr/local/cuda-7.5/include/builtin_types.h" 3
# 1 "/usr/local/cuda-7.5/include/device_types.h" 1 3
# 57 "/usr/local/cuda-7.5/include/builtin_types.h" 2 3





# 1 "/usr/local/cuda-7.5/include/surface_types.h" 1 3
# 63 "/usr/local/cuda-7.5/include/builtin_types.h" 2 3
# 1 "/usr/local/cuda-7.5/include/texture_types.h" 1 3
# 64 "/usr/local/cuda-7.5/include/builtin_types.h" 2 3
# 1 "/usr/local/cuda-7.5/include/vector_types.h" 1 3
# 64 "/usr/local/cuda-7.5/include/builtin_types.h" 2 3
# 62 "/usr/local/cuda-7.5/include/vector_types.h" 2 3
# 98 "/usr/local/cuda-7.5/include/vector_types.h" 3
struct __attribute__((device_builtin)) char1
{
    signed char x;
};

struct __attribute__((device_builtin)) uchar1
{
    unsigned char x;
};


struct __attribute__((device_builtin)) __attribute__((aligned(2))) char2
{
    signed char x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(2))) uchar2
{
    unsigned char x, y;
};

struct __attribute__((device_builtin)) char3
{
    signed char x, y, z;
};

struct __attribute__((device_builtin)) uchar3
{
    unsigned char x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) char4
{
    signed char x, y, z, w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) uchar4
{
    unsigned char x, y, z, w;
};

struct __attribute__((device_builtin)) short1
{
    short x;
};

struct __attribute__((device_builtin)) ushort1
{
    unsigned short x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) short2
{
    short x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) ushort2
{
    unsigned short x, y;
};

struct __attribute__((device_builtin)) short3
{
    short x, y, z;
};

struct __attribute__((device_builtin)) ushort3
{
    unsigned short x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(8))) short4 { short x; short y; short z; short w; };
struct __attribute__((device_builtin)) __attribute__((aligned(8))) ushort4 { unsigned short x; unsigned short y; unsigned short z; unsigned short w; };

struct __attribute__((device_builtin)) int1
{
    int x;
};

struct __attribute__((device_builtin)) uint1
{
    unsigned int x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(8))) int2 { int x; int y; };
struct __attribute__((device_builtin)) __attribute__((aligned(8))) uint2 { unsigned int x; unsigned int y; };

struct __attribute__((device_builtin)) int3
{
    int x, y, z;
};

struct __attribute__((device_builtin)) uint3
{
    unsigned int x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) int4
{
    int x, y, z, w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) uint4
{
    unsigned int x, y, z, w;
};

struct __attribute__((device_builtin)) long1
{
    long int x;
};

struct __attribute__((device_builtin)) ulong1
{
    unsigned long x;
};






struct __attribute__((device_builtin)) __attribute__((aligned(2*sizeof(long int)))) long2
{
    long int x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(2*sizeof(unsigned long int)))) ulong2
{
    unsigned long int x, y;
};



struct __attribute__((device_builtin)) long3
{
    long int x, y, z;
};

struct __attribute__((device_builtin)) ulong3
{
    unsigned long int x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) long4
{
    long int x, y, z, w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) ulong4
{
    unsigned long int x, y, z, w;
};

struct __attribute__((device_builtin)) float1
{
    float x;
};
# 274 "/usr/local/cuda-7.5/include/vector_types.h" 3
struct __attribute__((device_builtin)) __attribute__((aligned(8))) float2 { float x; float y; };




struct __attribute__((device_builtin)) float3
{
    float x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) float4
{
    float x, y, z, w;
};

struct __attribute__((device_builtin)) longlong1
{
    long long int x;
};

struct __attribute__((device_builtin)) ulonglong1
{
    unsigned long long int x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) longlong2
{
    long long int x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) ulonglong2
{
    unsigned long long int x, y;
};

struct __attribute__((device_builtin)) longlong3
{
    long long int x, y, z;
};

struct __attribute__((device_builtin)) ulonglong3
{
    unsigned long long int x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) longlong4
{
    long long int x, y, z ,w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) ulonglong4
{
    unsigned long long int x, y, z, w;
};

struct __attribute__((device_builtin)) double1
{
    double x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) double2
{
    double x, y;
};

struct __attribute__((device_builtin)) double3
{
    double x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) double4
{
    double x, y, z, w;
};
# 362 "/usr/local/cuda-7.5/include/vector_types.h" 3
typedef __attribute__((device_builtin)) struct char1 char1;
typedef __attribute__((device_builtin)) struct uchar1 uchar1;
typedef __attribute__((device_builtin)) struct char2 char2;
typedef __attribute__((device_builtin)) struct uchar2 uchar2;
typedef __attribute__((device_builtin)) struct char3 char3;
typedef __attribute__((device_builtin)) struct uchar3 uchar3;
typedef __attribute__((device_builtin)) struct char4 char4;
typedef __attribute__((device_builtin)) struct uchar4 uchar4;
typedef __attribute__((device_builtin)) struct short1 short1;
typedef __attribute__((device_builtin)) struct ushort1 ushort1;
typedef __attribute__((device_builtin)) struct short2 short2;
typedef __attribute__((device_builtin)) struct ushort2 ushort2;
typedef __attribute__((device_builtin)) struct short3 short3;
typedef __attribute__((device_builtin)) struct ushort3 ushort3;
typedef __attribute__((device_builtin)) struct short4 short4;
typedef __attribute__((device_builtin)) struct ushort4 ushort4;
typedef __attribute__((device_builtin)) struct int1 int1;
typedef __attribute__((device_builtin)) struct uint1 uint1;
typedef __attribute__((device_builtin)) struct int2 int2;
typedef __attribute__((device_builtin)) struct uint2 uint2;
typedef __attribute__((device_builtin)) struct int3 int3;
typedef __attribute__((device_builtin)) struct uint3 uint3;
typedef __attribute__((device_builtin)) struct int4 int4;
typedef __attribute__((device_builtin)) struct uint4 uint4;
typedef __attribute__((device_builtin)) struct long1 long1;
typedef __attribute__((device_builtin)) struct ulong1 ulong1;
typedef __attribute__((device_builtin)) struct long2 long2;
typedef __attribute__((device_builtin)) struct ulong2 ulong2;
typedef __attribute__((device_builtin)) struct long3 long3;
typedef __attribute__((device_builtin)) struct ulong3 ulong3;
typedef __attribute__((device_builtin)) struct long4 long4;
typedef __attribute__((device_builtin)) struct ulong4 ulong4;
typedef __attribute__((device_builtin)) struct float1 float1;
typedef __attribute__((device_builtin)) struct float2 float2;
typedef __attribute__((device_builtin)) struct float3 float3;
typedef __attribute__((device_builtin)) struct float4 float4;
typedef __attribute__((device_builtin)) struct longlong1 longlong1;
typedef __attribute__((device_builtin)) struct ulonglong1 ulonglong1;
typedef __attribute__((device_builtin)) struct longlong2 longlong2;
typedef __attribute__((device_builtin)) struct ulonglong2 ulonglong2;
typedef __attribute__((device_builtin)) struct longlong3 longlong3;
typedef __attribute__((device_builtin)) struct ulonglong3 ulonglong3;
typedef __attribute__((device_builtin)) struct longlong4 longlong4;
typedef __attribute__((device_builtin)) struct ulonglong4 ulonglong4;
typedef __attribute__((device_builtin)) struct double1 double1;
typedef __attribute__((device_builtin)) struct double2 double2;
typedef __attribute__((device_builtin)) struct double3 double3;
typedef __attribute__((device_builtin)) struct double4 double4;







struct __attribute__((device_builtin)) dim3
{
    unsigned int x, y, z;





};

typedef __attribute__((device_builtin)) struct dim3 dim3;
# 64 "/usr/local/cuda-7.5/bin/..//include/builtin_types.h" 2 3
# 264 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 2 3
# 1 "/usr/local/cuda-7.5/bin/..//include/device_launch_parameters.h" 1 3
# 71 "/usr/local/cuda-7.5/bin/..//include/device_launch_parameters.h" 3
uint3 __attribute__((device_builtin)) extern const threadIdx;
uint3 __attribute__((device_builtin)) extern const blockIdx;
dim3 __attribute__((device_builtin)) extern const blockDim;
dim3 __attribute__((device_builtin)) extern const gridDim;
int __attribute__((device_builtin)) extern const warpSize;
# 265 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 2 3
# 1 "/usr/local/cuda-7.5/include/crt/storage_class.h" 1 3
# 265 "/usr/local/cuda-7.5/bin/..//include/crt/device_runtime.h" 2 3
# 214 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 2 3
# 39 "/usr/include/xlocale.h" 3
typedef struct __locale_struct *__locale_t;
# 139 "/usr/include/x86_64-linux-gnu/bits/types.h" 3
typedef long __time_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3
typedef long __suseconds_t;
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3
struct timeval {
# 32 "/usr/include/x86_64-linux-gnu/bits/time.h" 3
__time_t tv_sec;
# 33 "/usr/include/x86_64-linux-gnu/bits/time.h" 3
__suseconds_t tv_usec;};
# 48 "/usr/include/stdio.h" 3
typedef struct _IO_FILE FILE;
# 86 "/usr/include/wchar.h" 3
union _ZN11__mbstate_tUt_E {
# 88 "/usr/include/wchar.h" 3
unsigned __wch;
# 92 "/usr/include/wchar.h" 3
char __wchb[4];};
# 83 "/usr/include/wchar.h" 3
struct __mbstate_t {
# 84 "/usr/include/wchar.h" 3
int __count;
# 93 "/usr/include/wchar.h" 3
union _ZN11__mbstate_tUt_E __value;};
# 94 "/usr/include/wchar.h" 3
typedef struct __mbstate_t __mbstate_t;
# 75 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct __pthread_internal_list {
# 77 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct __pthread_internal_list *__prev;
# 78 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct __pthread_internal_list *__next;};
# 79 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
typedef struct __pthread_internal_list __pthread_list_t;
# 92 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct _ZN15pthread_mutex_t17__pthread_mutex_sE {
# 94 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
int __lock;
# 95 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
unsigned __count;
# 96 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
int __owner;
# 98 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
unsigned __nusers;
# 102 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
int __kind;
# 104 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
short __spins;
# 105 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
short __elision;
# 106 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
__pthread_list_t __list;};
# 91 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
union pthread_mutex_t {
# 124 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct _ZN15pthread_mutex_t17__pthread_mutex_sE __data;
# 125 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
char __size[40];
# 126 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
long __align;};
# 127 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
typedef union pthread_mutex_t pthread_mutex_t;
# 7 "util.h"
typedef unsigned UINT;
# 9 "util.h"
typedef unsigned UINT64;
# 24 "filter.h"
struct filter {
# 26 "filter.h"
UINT64 srcIP_;
# 27 "filter.h"
unsigned char srcIPLen_;
# 28 "filter.h"
unsigned char srcIPPref_[4];
# 30 "filter.h"
UINT64 destIP_;
# 31 "filter.h"
unsigned char destIPLen_;
# 32 "filter.h"
unsigned char destIPPref_[4];
# 34 "filter.h"
int srcPortleft_;
# 35 "filter.h"
int srcPortright_;
# 36 "filter.h"
int destPortleft_;
# 37 "filter.h"
int destPortright_;
# 38 "filter.h"
int pro_num_;
# 41 "filter.h"
int bitstream;
# 43 "filter.h"
unsigned cost_;
# 44 "filter.h"
__nv_bool Traceflag;
# 45 "filter.h"
__nv_bool add_marker;
# 46 "filter.h"
__nv_bool marker;
# 47 "filter.h"
struct filter *Pointer;
# 48 "filter.h"
struct filter *FPointer;};
# 10 "filter_db.h"
struct clsFilterDB {
# 19 "filter_db.h"
struct filter *filterSet_;
# 20 "filter_db.h"
struct filter *addfilterSet_;
# 30 "filter_db.h"
int cntr_;char __nv_no_debug_dummy_end_padding_0[4];};
# 61 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
typedef struct timezone *__restrict__ __timezone_ptr_t;
# 106 "/usr/include/wchar.h" 3
typedef __mbstate_t mbstate_t;
# 50 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/gthr-default.h" 3
typedef pthread_mutex_t __gthread_mutex_t;
# 32 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/atomic_word.h" 3
typedef int _Atomic_word;
# 186 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++config.h" 3
typedef unsigned long _ZSt6size_t;
# 187 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++config.h" 3
typedef long _ZSt9ptrdiff_t;
# 98 "/usr/include/c++/4.8/bits/postypes.h" 3
typedef _ZSt9ptrdiff_t _ZSt10streamsize;
# 136 "/usr/include/c++/4.8/iosfwd" 3
typedef struct _ZSo _ZSt7ostream;
# 160 "/usr/include/c++/4.8/iosfwd" 3
typedef struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE _ZSt8ofstream;
# 239 "/usr/include/c++/4.8/bits/char_traits.h" 3
typedef mbstate_t _ZNSt11char_traitsIcE10state_typeE;
# 233 "/usr/include/c++/4.8/bits/char_traits.h" 3
struct _ZSt11char_traitsIcE {char __nv_no_debug_dummy_end_padding_0;};
# 62 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++locale.h" 3
typedef __locale_t _ZSt10__c_locale;
# 338 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5facetE { const long *__vptr;
# 344 "/usr/include/c++/4.8/bits/locale_classes.h" 3
_Atomic_word _M_refcount;char __nv_no_debug_dummy_end_padding_0[4];};
# 338 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct __SO__NSt6locale5facetE { const long *__vptr;
# 344 "/usr/include/c++/4.8/bits/locale_classes.h" 3
_Atomic_word _M_refcount;};
# 62 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZSt6locale {
# 280 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5_ImplE *_M_impl;};
# 261 "/usr/include/c++/4.8/bits/ios_base.h" 3
typedef enum _ZSt13_Ios_Fmtflags _ZNSt8ios_base8fmtflagsE;
# 336 "/usr/include/c++/4.8/bits/ios_base.h" 3
typedef enum _ZSt12_Ios_Iostate _ZNSt8ios_base7iostateE;
# 367 "/usr/include/c++/4.8/bits/ios_base.h" 3
typedef enum _ZSt13_Ios_Openmode _ZNSt8ios_base8openmodeE;
# 505 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE {
# 507 "/usr/include/c++/4.8/bits/ios_base.h" 3
void *_M_pword;
# 508 "/usr/include/c++/4.8/bits/ios_base.h" 3
long _M_iword;};
# 539 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base4InitE {char __nv_no_debug_dummy_end_padding_0;};
# 205 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZSt8ios_base { const long *__vptr;
# 458 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt10streamsize _M_precision;
# 459 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt10streamsize _M_width;
# 460 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZNSt8ios_base8fmtflagsE _M_flags;
# 461 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZNSt8ios_base7iostateE _M_exception;
# 462 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZNSt8ios_base7iostateE _M_streambuf_state;
# 496 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base14_Callback_listE *_M_callbacks;
# 513 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE _M_word_zero;
# 518 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE _M_local_word[8];
# 521 "/usr/include/c++/4.8/bits/ios_base.h" 3
int _M_word_size;
# 522 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE *_M_word;
# 528 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZSt6locale _M_ios_locale;};
# 129 "/usr/include/c++/4.8/streambuf" 3
typedef char _ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE;
# 130 "/usr/include/c++/4.8/streambuf" 3
typedef struct _ZSt11char_traitsIcE _ZNSt15basic_streambufIcSt11char_traitsIcEE11traits_typeE;
# 80 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt15basic_streambufIcSt11char_traitsIcEE { const long *__vptr;
# 184 "/usr/include/c++/4.8/streambuf" 3
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_in_beg;
# 185 "/usr/include/c++/4.8/streambuf" 3
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_in_cur;
# 186 "/usr/include/c++/4.8/streambuf" 3
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_in_end;
# 187 "/usr/include/c++/4.8/streambuf" 3
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_out_beg;
# 188 "/usr/include/c++/4.8/streambuf" 3
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_out_cur;
# 189 "/usr/include/c++/4.8/streambuf" 3
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_out_end;
# 192 "/usr/include/c++/4.8/streambuf" 3
struct _ZSt6locale _M_buf_locale;};
# 44 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/ctype_base.h" 3
typedef const int *_ZNSt10ctype_base9__to_typeE;
# 48 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/ctype_base.h" 3
typedef unsigned short _ZNSt10ctype_base4maskE;
# 41 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/ctype_base.h" 3
struct _ZSt10ctype_base {char __nv_no_debug_dummy_end_padding_0;};
# 679 "/usr/include/c++/4.8/bits/locale_facets.h" 3
typedef char _ZNSt5ctypeIcE9char_typeE;
# 674 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt5ctypeIcE { const long *__b_NSt6locale5facetE___vptr;
# 344 "/usr/include/c++/4.8/bits/locale_classes.h" 3
_Atomic_word __b_NSt6locale5facetE__M_refcount;
# 683 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZSt10__c_locale _M_c_locale_ctype;
# 684 "/usr/include/c++/4.8/bits/locale_facets.h" 3
__nv_bool _M_del;
# 685 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10ctype_base9__to_typeE _M_toupper;
# 686 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZNSt10ctype_base9__to_typeE _M_tolower;
# 687 "/usr/include/c++/4.8/bits/locale_facets.h" 3
const _ZNSt10ctype_base4maskE *_M_table;
# 688 "/usr/include/c++/4.8/bits/locale_facets.h" 3
char _M_widen_ok;
# 689 "/usr/include/c++/4.8/bits/locale_facets.h" 3
char _M_widen[256];
# 690 "/usr/include/c++/4.8/bits/locale_facets.h" 3
char _M_narrow[256];
# 691 "/usr/include/c++/4.8/bits/locale_facets.h" 3
char _M_narrow_ok;char __nv_no_debug_dummy_end_padding_0[6];};
# 75 "/usr/include/c++/4.8/bits/basic_ios.h" 3
typedef char _ZNSt9basic_iosIcSt11char_traitsIcEE9char_typeE;
# 86 "/usr/include/c++/4.8/bits/basic_ios.h" 3
typedef struct _ZSt5ctypeIcE _ZNSt9basic_iosIcSt11char_traitsIcEE12__ctype_typeE;
# 88 "/usr/include/c++/4.8/bits/basic_ios.h" 3
typedef struct _ZSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_put_typeE;
# 90 "/usr/include/c++/4.8/bits/basic_ios.h" 3
typedef struct _ZSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_get_typeE;
# 77 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt9basic_iosIcSt11char_traitsIcEE { struct _ZSt8ios_base __b_St8ios_base;
# 95 "/usr/include/c++/4.8/bits/basic_ios.h" 3
struct _ZSo *_M_tie;
# 96 "/usr/include/c++/4.8/bits/basic_ios.h" 3
_ZNSt9basic_iosIcSt11char_traitsIcEE9char_typeE _M_fill;
# 97 "/usr/include/c++/4.8/bits/basic_ios.h" 3
__nv_bool _M_fill_init;
# 98 "/usr/include/c++/4.8/bits/basic_ios.h" 3
struct _ZSt15basic_streambufIcSt11char_traitsIcEE *_M_streambuf;
# 101 "/usr/include/c++/4.8/bits/basic_ios.h" 3
const _ZNSt9basic_iosIcSt11char_traitsIcEE12__ctype_typeE *_M_ctype;
# 103 "/usr/include/c++/4.8/bits/basic_ios.h" 3
const _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_put_typeE *_M_num_put;
# 105 "/usr/include/c++/4.8/bits/basic_ios.h" 3
const _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_get_typeE *_M_num_get;};
# 62 "/usr/include/c++/4.8/ostream" 3
typedef char _ZNSo9char_typeE;
# 71 "/usr/include/c++/4.8/ostream" 3
typedef struct _ZSo _ZNSo14__ostream_typeE;
# 86 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSo { const long *__vptr; struct _ZSt9basic_iosIcSt11char_traitsIcEE __v_St9basic_iosIcSt11char_traitsIcEE;};
# 86 "/usr/include/c++/4.8/iosfwd" 3
struct __SO__So { const long *__vptr;};
# 42 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++io.h" 3
typedef __gthread_mutex_t _ZSt8__c_lock;
# 45 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++io.h" 3
typedef FILE _ZSt8__c_file;
# 53 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/basic_file.h" 3
struct _ZSt12__basic_fileIcE {
# 56 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/basic_file.h" 3
_ZSt8__c_file *_M_cfile;
# 59 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/basic_file.h" 3
__nv_bool _M_cfile_created;char __nv_no_debug_dummy_end_padding_0[7];};
# 76 "/usr/include/c++/4.8/fstream" 3
typedef char _ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE;
# 83 "/usr/include/c++/4.8/fstream" 3
typedef struct _ZSt13basic_filebufIcSt11char_traitsIcEE _ZNSt13basic_filebufIcSt11char_traitsIcEE14__filebuf_typeE;
# 84 "/usr/include/c++/4.8/fstream" 3
typedef struct _ZSt12__basic_fileIcE _ZNSt13basic_filebufIcSt11char_traitsIcEE11__file_typeE;
# 85 "/usr/include/c++/4.8/fstream" 3
typedef _ZNSt11char_traitsIcE10state_typeE _ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE;
# 86 "/usr/include/c++/4.8/fstream" 3
typedef struct _ZSt7codecvtIcc11__mbstate_tE _ZNSt13basic_filebufIcSt11char_traitsIcEE14__codecvt_typeE;
# 108 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt13basic_filebufIcSt11char_traitsIcEE { struct _ZSt15basic_streambufIcSt11char_traitsIcEE __b_St15basic_streambufIcSt11char_traitsIcEE;
# 93 "/usr/include/c++/4.8/fstream" 3
_ZSt8__c_lock _M_lock;
# 96 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE11__file_typeE _M_file;
# 99 "/usr/include/c++/4.8/fstream" 3
_ZNSt8ios_base8openmodeE _M_mode;
# 102 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE _M_state_beg;
# 107 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE _M_state_cur;
# 111 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE _M_state_last;
# 114 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE *_M_buf;
# 121 "/usr/include/c++/4.8/fstream" 3
_ZSt6size_t _M_buf_size;
# 124 "/usr/include/c++/4.8/fstream" 3
__nv_bool _M_buf_allocated;
# 133 "/usr/include/c++/4.8/fstream" 3
__nv_bool _M_reading;
# 134 "/usr/include/c++/4.8/fstream" 3
__nv_bool _M_writing;
# 142 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE _M_pback;
# 143 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE *_M_pback_cur_save;
# 144 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE *_M_pback_end_save;
# 145 "/usr/include/c++/4.8/fstream" 3
__nv_bool _M_pback_init;
# 149 "/usr/include/c++/4.8/fstream" 3
const _ZNSt13basic_filebufIcSt11char_traitsIcEE14__codecvt_typeE *_M_codecvt;
# 156 "/usr/include/c++/4.8/fstream" 3
char *_M_ext_buf;
# 161 "/usr/include/c++/4.8/fstream" 3
_ZSt10streamsize _M_ext_buf_size;
# 168 "/usr/include/c++/4.8/fstream" 3
const char *_M_ext_next;
# 169 "/usr/include/c++/4.8/fstream" 3
char *_M_ext_end;};
# 610 "/usr/include/c++/4.8/fstream" 3
typedef struct _ZSt13basic_filebufIcSt11char_traitsIcEE _ZNSt14basic_ofstreamIcSt11char_traitsIcEE14__filebuf_typeE;
# 114 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE { struct __SO__So __b_So;
# 614 "/usr/include/c++/4.8/fstream" 3
_ZNSt14basic_ofstreamIcSt11char_traitsIcEE14__filebuf_typeE _M_filebuf; struct _ZSt9basic_iosIcSt11char_traitsIcEE __v_St9basic_iosIcSt11char_traitsIcEE;};
# 153 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
union _ZZ10__signbitlEUt_ {
# 153 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
long double __l;
# 153 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
int __i[3];};
# 202 "/usr/local/cuda-7.5/bin/..//include/common_functions.h"
extern __attribute__((device)) __attribute__((__externally_visible__)) __attribute__((__nothrow__)) __attribute__((visibility("default"))) void free(void *);
# 111 "/usr/local/cuda-7.5/bin/..//include/cuda_device_runtime_api.h"
extern __attribute__((device)) enum cudaError cudaGetLastError(void);
# 113 "/usr/local/cuda-7.5/bin/..//include/cuda_device_runtime_api.h"
extern __attribute__((device)) const char *cudaGetErrorString(enum cudaError);
# 126 "/usr/local/cuda-7.5/bin/..//include/cuda_device_runtime_api.h"
extern __attribute__((device)) enum cudaError cudaFree(void *);
# 127 "/usr/local/cuda-7.5/bin/..//include/cuda_device_runtime_api.h"
extern __attribute__((device)) enum cudaError cudaMalloc(void **, size_t);
# 95 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3
 __attribute__((device_builtin)) extern __attribute__((device)) __inline__ __attribute__((__artificial__)) __attribute__((__always_inline__)) __attribute__((__gnu_inline__)) int fprintf(FILE *__restrict__, const char *__restrict__, ...);
# 102 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3
 __attribute__((device_builtin)) extern __attribute__((device)) __inline__ __attribute__((__artificial__)) __attribute__((__always_inline__)) __attribute__((__gnu_inline__)) int printf(const char *__restrict__, ...);
# 124 "/usr/local/cuda-7.5/bin/..//include/common_functions.h"
extern __attribute__((device)) __attribute__((__malloc__)) __attribute__((__nothrow__)) void *malloc(size_t);
# 125 "/usr/local/cuda-7.5/bin/..//include/common_functions.h"
extern __attribute__((device)) __attribute__((__nothrow__)) void free(void *);
# 127 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
 __attribute__((device_builtin)) extern __attribute__((device)) __inline__ __attribute__((__always_inline__)) __attribute__((__gnu_inline__)) __attribute__((__nothrow__)) __attribute__((__const__)) int __signbitf(float);
# 139 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
 __attribute__((device_builtin)) extern __attribute__((device)) __inline__ __attribute__((__always_inline__)) __attribute__((__gnu_inline__)) __attribute__((__nothrow__)) __attribute__((__const__)) int __signbit(double);
# 151 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
 __attribute__((device_builtin)) extern __attribute__((device)) __inline__ __attribute__((__always_inline__)) __attribute__((__gnu_inline__)) __attribute__((__nothrow__)) __attribute__((__const__)) int __signbitl(long double);
# 160 "/usr/local/cuda-7.5/bin/..//include/device_functions.h"
 __attribute__((device_builtin)) extern __attribute__((device)) void __syncthreads(void);
# 120 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
static __attribute__((device)) __inline__ int _Z11__shfl_downiji(int, unsigned, int);
# 27 "main.cu"
extern __attribute__((device)) __inline__ int _Z13warpReduceSumi(int);
# 37 "main.cu"
extern __attribute__((device)) __inline__ int _Z14blockReduceSumi(int);
# 56 "main.cu"
extern __attribute__((device)) __inline__ UINT64 _Z9genPrefixjh(UINT64, unsigned char);
# 108 "main.cu"
__attribute__((global)) extern void _Z21gpu_conflict_detect_0P6filteriPi(struct filter *const __restrict__, int, int *);
# 210 "main.cu"
__attribute__((global)) extern void _Z21gpu_conflict_detect_1P6filteriPi(struct filter *const __restrict__, int, int *);
# 309 "main.cu"
__attribute__((global)) extern void _Z21gpu_conflict_detect_2P6filteriPi(struct filter *const __restrict__, int, int *);
static __attribute__((device)) const long _ZTVSt9basic_iosIcSt11char_traitsIcEE[4];
static __attribute__((device)) const long *const _ZTTSo[];
static __attribute__((device)) const long _ZTVSt15basic_streambufIcSt11char_traitsIcEE[16];
static __attribute__((device)) const long _ZTVSt13basic_filebufIcSt11char_traitsIcEE[16];
static __attribute__((device)) const long *const _ZTTSt14basic_ofstreamIcSt11char_traitsIcEE[];
# 1 "/usr/local/cuda-7.5/bin/..//include/common_functions.h" 1
# 224 "/usr/local/cuda-7.5/bin/..//include/common_functions.h"
# 1 "/usr/local/cuda-7.5/include/math_functions.h" 1 3
# 10210 "/usr/local/cuda-7.5/include/math_functions.h" 3
# 1 "/usr/local/cuda-7.5/include/math_functions.hpp" 1 3
# 10211 "/usr/local/cuda-7.5/include/math_functions.h" 2 3



# 1 "/usr/local/cuda-7.5/include/math_functions_dbl_ptx3.h" 1 3
# 270 "/usr/local/cuda-7.5/include/math_functions_dbl_ptx3.h" 3
# 1 "/usr/local/cuda-7.5/include/math_functions_dbl_ptx3.hpp" 1 3
# 271 "/usr/local/cuda-7.5/include/math_functions_dbl_ptx3.h" 2 3
# 10215 "/usr/local/cuda-7.5/include/math_functions.h" 2 3
# 225 "/usr/local/cuda-7.5/bin/..//include/common_functions.h" 2
# 316 "main.cu" 2
# 119 "/usr/local/cuda-7.5/bin/..//include/common_functions.h"
 __attribute__((device_builtin)) extern __attribute__((device)) __attribute__((__artificial__)) __attribute__((__always_inline__)) int printf(const char *, ...);
# 121 "/usr/local/cuda-7.5/bin/..//include/common_functions.h"
 __attribute__((device_builtin)) extern __attribute__((device)) __attribute__((__artificial__)) __attribute__((__always_inline__)) int fprintf(FILE *, const char *, ...);
# 120 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
static __attribute__((device)) __inline__ int _Z11__shfl_downiji(
# 120 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
int var,
# 120 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
unsigned delta,
# 120 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
int width){
# 120 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
{
# 121 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
 int __cuda_local_var_11819_6_non_const_ret;
# 122 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
 int __cuda_local_var_11820_6_non_const_c;
# 122 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
__cuda_local_var_11820_6_non_const_c = (((32 - width) << 8) | 31);
# 123 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
__asm volatile("shfl.down.b32 %0, %1, %2, %3;" : "=r" (__cuda_local_var_11819_6_non_const_ret) : "r" (var), "r" (delta), "r" (__cuda_local_var_11820_6_non_const_c));
# 124 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
return __cuda_local_var_11819_6_non_const_ret;
# 125 "/usr/local/cuda-7.5/bin/..//include/sm_30_intrinsics.hpp"
}}
# 27 "main.cu"
 __attribute__((device)) __inline__ int _Z13warpReduceSumi(
# 27 "main.cu"
int val){
# 28 "main.cu"
{
# 28 "main.cu"
{
# 29 "main.cu"
 int offset;
# 29 "main.cu"
offset = (warpSize / 2);
# 29 "main.cu"
for (; (offset > 0); offset /= 2)
# 30 "main.cu"
{
# 31 "main.cu"
val += (_Z11__shfl_downiji(val, ((unsigned)offset), 32));
# 33 "main.cu"
} }
# 34 "main.cu"
return val;
# 35 "main.cu"
}}
# 37 "main.cu"
 __attribute__((device)) __inline__ int _Z14blockReduceSumi(
# 37 "main.cu"
int val){
# 38 "main.cu"
{
# 39 "main.cu"
  __attribute__((shared)) int __cuda_local_var_62504_40_non_const_shared[16];
# 41 "main.cu"
 int __cuda_local_var_62506_9_non_const_lane;
# 42 "main.cu"
 int __cuda_local_var_62507_9_non_const_wid;
# 41 "main.cu"
__cuda_local_var_62506_9_non_const_lane = ((int)((threadIdx.x) % ((unsigned)warpSize)));
# 42 "main.cu"
__cuda_local_var_62507_9_non_const_wid = ((int)((threadIdx.x) / ((unsigned)warpSize)));
# 44 "main.cu"
val = (_Z13warpReduceSumi(val));
# 46 "main.cu"
if (__cuda_local_var_62506_9_non_const_lane == 0) {
# 46 "main.cu"
((__cuda_local_var_62504_40_non_const_shared)[__cuda_local_var_62507_9_non_const_wid]) = val; }
# 48 "main.cu"
__syncthreads();
# 50 "main.cu"
val = (((threadIdx.x) < ((blockDim.x) / ((unsigned)warpSize))) ? ((__cuda_local_var_62504_40_non_const_shared)[__cuda_local_var_62506_9_non_const_lane]) : 0);
# 51 "main.cu"
if (__cuda_local_var_62507_9_non_const_wid == 0) {
# 51 "main.cu"
val = (_Z13warpReduceSumi(val)); }
# 53 "main.cu"
return val;
# 54 "main.cu"
}}
# 56 "main.cu"
 __attribute__((device)) __inline__ UINT64 _Z9genPrefixjh(
# 56 "main.cu"
UINT64 prefix,
# 56 "main.cu"
unsigned char len){
# 57 "main.cu"
{
# 58 "main.cu"
register UINT64 result;
# 59 "main.cu"
register UINT mask_m;
# 61 "main.cu"
if (((int)len) == 0) {
# 62 "main.cu"
return 0U; }
# 63 "main.cu"
else
# 63 "main.cu"
{
# 65 "main.cu"
mask_m = (4294967295U << (32 - ((int)len)));
# 66 "main.cu"
result = (prefix & mask_m);
# 67 "main.cu"
return result;
# 68 "main.cu"
}
# 69 "main.cu"
}}
# 108 "main.cu"
__attribute__((global)) void _Z21gpu_conflict_detect_0P6filteriPi(
# 108 "main.cu"
struct filter *const __restrict__ filterSet,
# 108 "main.cu"
int rule_size,
# 108 "main.cu"
int *d_total){
# 109 "main.cu"
{
# 111 "main.cu"
 int __cuda_local_var_62576_9_non_const_threadID;
# 112 "main.cu"
 int __cuda_local_var_62577_9_non_const_threadSize;
# 113 "main.cu"
 int __cuda_local_var_62578_9_non_const_base;
# 114 "main.cu"
 int __cuda_local_var_62579_9_non_const_start;
# 115 "main.cu"
 int __cuda_local_var_62580_9_non_const_total;
# 111 "main.cu"
__cuda_local_var_62576_9_non_const_threadID = ((int)(((blockDim.x) * (blockIdx.x)) + (threadIdx.x)));
# 112 "main.cu"
__cuda_local_var_62577_9_non_const_threadSize = ((int)((gridDim.x) * (blockDim.x)));
# 113 "main.cu"
__cuda_local_var_62578_9_non_const_base = ((rule_size / __cuda_local_var_62577_9_non_const_threadSize) + 1);
# 114 "main.cu"
__cuda_local_var_62579_9_non_const_start = (__cuda_local_var_62576_9_non_const_threadID * __cuda_local_var_62578_9_non_const_base);
# 115 "main.cu"
__cuda_local_var_62580_9_non_const_total = 0;
# 118 "main.cu"
if (__cuda_local_var_62579_9_non_const_start > rule_size) {
# 118 "main.cu"
return; } {
# 119 "main.cu"
 int i;
# 119 "main.cu"
i = __cuda_local_var_62579_9_non_const_start;
# 119 "main.cu"
for (; ((i < (__cuda_local_var_62579_9_non_const_start + __cuda_local_var_62578_9_non_const_base)) && (i < rule_size)); i++)
# 119 "main.cu"
{ {
# 122 "main.cu"
 int j;
# 122 "main.cu"
j = 0;
# 122 "main.cu"

#pragma unroll
for (; (j < rule_size); j++)
# 122 "main.cu"
{
# 124 "main.cu"
if (((int)((filterSet[i]).srcIPLen_)) > ((int)((filterSet[j]).srcIPLen_)))
# 124 "main.cu"
{
# 125 "main.cu"
if ((_Z9genPrefixjh(((filterSet[i]).srcIP_), ((filterSet[j]).srcIPLen_))) == ((filterSet[j]).srcIP_))
# 125 "main.cu"
{
# 126 "main.cu"
if (((!((filterSet[i]).pro_num_)) || (!((filterSet[j]).pro_num_))) || (((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)))
# 126 "main.cu"
{
# 127 "main.cu"
if (((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) >= ((filterSet[j]).destPortleft_))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) <= ((filterSet[j]).destPortright_)))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)))) && ((((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) >= ((filterSet[j]).srcPortleft_))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) <= ((filterSet[j]).srcPortright_)))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)))))
# 143 "main.cu"
{
# 146 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) > ((int)((filterSet[j]).destIPLen_)))
# 146 "main.cu"
{
# 147 "main.cu"
if ((_Z9genPrefixjh(((filterSet[i]).destIP_), ((filterSet[j]).destIPLen_))) == ((filterSet[j]).destIP_))
# 147 "main.cu"
{
# 150 "main.cu"
if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))
# 154 "main.cu"
{
# 154 "main.cu"
} else {
# 158 "main.cu"
__cuda_local_var_62580_9_non_const_total++; }
# 159 "main.cu"
}
# 160 "main.cu"
}
# 162 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) < ((int)((filterSet[j]).destIPLen_)))
# 162 "main.cu"
{
# 163 "main.cu"
if ((_Z9genPrefixjh(((filterSet[j]).destIP_), ((filterSet[i]).destIPLen_))) == ((filterSet[i]).destIP_))
# 163 "main.cu"
{
# 175 "main.cu"
__cuda_local_var_62580_9_non_const_total++;
# 176 "main.cu"
}
# 177 "main.cu"
}
# 179 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) == ((int)((filterSet[j]).destIPLen_)))
# 179 "main.cu"
{
# 180 "main.cu"
if (((filterSet[i]).destIP_) == ((filterSet[j]).destIP_))
# 180 "main.cu"
{
# 183 "main.cu"
if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))
# 187 "main.cu"
{
# 187 "main.cu"
} else {
# 191 "main.cu"
__cuda_local_var_62580_9_non_const_total++; }
# 192 "main.cu"
}
# 193 "main.cu"
}
# 194 "main.cu"
}
# 195 "main.cu"
}
# 196 "main.cu"
}
# 197 "main.cu"
}
# 198 "main.cu"
} }
# 200 "main.cu"
} }
# 201 "main.cu"
__cuda_local_var_62580_9_non_const_total = (_Z14blockReduceSumi(__cuda_local_var_62580_9_non_const_total));
# 203 "main.cu"
if ((threadIdx.x) == 0U) {
# 204 "main.cu"
(d_total[(blockIdx.x)]) = __cuda_local_var_62580_9_non_const_total; }
# 207 "main.cu"
}}
# 210 "main.cu"
__attribute__((global)) void _Z21gpu_conflict_detect_1P6filteriPi(
# 210 "main.cu"
struct filter *const __restrict__ filterSet,
# 210 "main.cu"
int rule_size,
# 210 "main.cu"
int *d_total){
# 211 "main.cu"
{
# 213 "main.cu"
 int __cuda_local_var_62668_9_non_const_threadID;
# 214 "main.cu"
 int __cuda_local_var_62669_9_non_const_threadSize;
# 215 "main.cu"
 int __cuda_local_var_62670_9_non_const_base;
# 216 "main.cu"
 int __cuda_local_var_62671_9_non_const_start;
# 217 "main.cu"
 int __cuda_local_var_62672_9_non_const_total;
# 213 "main.cu"
__cuda_local_var_62668_9_non_const_threadID = ((int)(((blockDim.x) * (blockIdx.x)) + (threadIdx.x)));
# 214 "main.cu"
__cuda_local_var_62669_9_non_const_threadSize = ((int)((gridDim.x) * (blockDim.x)));
# 215 "main.cu"
__cuda_local_var_62670_9_non_const_base = ((rule_size / __cuda_local_var_62669_9_non_const_threadSize) + 1);
# 216 "main.cu"
__cuda_local_var_62671_9_non_const_start = (__cuda_local_var_62668_9_non_const_threadID * __cuda_local_var_62670_9_non_const_base);
# 217 "main.cu"
__cuda_local_var_62672_9_non_const_total = 0;
# 219 "main.cu"
if (__cuda_local_var_62671_9_non_const_start > rule_size) {
# 219 "main.cu"
return; } {
# 220 "main.cu"
 int i;
# 220 "main.cu"
i = __cuda_local_var_62671_9_non_const_start;
# 220 "main.cu"
for (; ((i < (__cuda_local_var_62671_9_non_const_start + __cuda_local_var_62670_9_non_const_base)) && (i < rule_size)); i++)
# 220 "main.cu"
{ {
# 223 "main.cu"
 int j;
# 223 "main.cu"
j = 0;
# 223 "main.cu"

#pragma unroll
for (; (j < i); j++)
# 223 "main.cu"
{
# 225 "main.cu"
if (((int)((filterSet[i]).srcIPLen_)) > ((int)((filterSet[j]).srcIPLen_)))
# 225 "main.cu"
{
# 226 "main.cu"
if ((_Z9genPrefixjh(((filterSet[i]).srcIP_), ((filterSet[j]).srcIPLen_))) == ((filterSet[j]).srcIP_))
# 226 "main.cu"
{
# 227 "main.cu"
if (((!((filterSet[i]).pro_num_)) || (!((filterSet[j]).pro_num_))) || (((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)))
# 227 "main.cu"
{
# 228 "main.cu"
if (((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) >= ((filterSet[j]).destPortleft_))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) <= ((filterSet[j]).destPortright_)))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)))) && ((((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) >= ((filterSet[j]).srcPortleft_))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) <= ((filterSet[j]).srcPortright_)))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)))))
# 244 "main.cu"
{
# 247 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) > ((int)((filterSet[j]).destIPLen_)))
# 247 "main.cu"
{
# 248 "main.cu"
if ((_Z9genPrefixjh(((filterSet[i]).destIP_), ((filterSet[j]).destIPLen_))) == ((filterSet[j]).destIP_))
# 248 "main.cu"
{
# 251 "main.cu"
if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))
# 255 "main.cu"
{
# 255 "main.cu"
} else {
# 259 "main.cu"
__cuda_local_var_62672_9_non_const_total++; }
# 260 "main.cu"
}
# 261 "main.cu"
}
# 263 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) < ((int)((filterSet[j]).destIPLen_)))
# 263 "main.cu"
{
# 264 "main.cu"
if ((_Z9genPrefixjh(((filterSet[j]).destIP_), ((filterSet[i]).destIPLen_))) == ((filterSet[i]).destIP_))
# 264 "main.cu"
{
# 276 "main.cu"
__cuda_local_var_62672_9_non_const_total++;
# 277 "main.cu"
}
# 278 "main.cu"
}
# 280 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) == ((int)((filterSet[j]).destIPLen_)))
# 280 "main.cu"
{
# 281 "main.cu"
if (((filterSet[i]).destIP_) == ((filterSet[j]).destIP_))
# 281 "main.cu"
{
# 284 "main.cu"
if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))
# 288 "main.cu"
{
# 288 "main.cu"
} else {
# 292 "main.cu"
__cuda_local_var_62672_9_non_const_total++; }
# 293 "main.cu"
}
# 294 "main.cu"
}
# 295 "main.cu"
}
# 296 "main.cu"
}
# 297 "main.cu"
}
# 298 "main.cu"
}
# 299 "main.cu"
} }
# 300 "main.cu"
} }
# 301 "main.cu"
__cuda_local_var_62672_9_non_const_total = (_Z14blockReduceSumi(__cuda_local_var_62672_9_non_const_total));
# 302 "main.cu"
if ((threadIdx.x) == 0U) {
# 303 "main.cu"
(d_total[(blockIdx.x)]) = __cuda_local_var_62672_9_non_const_total; }
# 306 "main.cu"
}}
# 309 "main.cu"
__attribute__((global)) void _Z21gpu_conflict_detect_2P6filteriPi(
# 309 "main.cu"
struct filter *const __restrict__ filterSet,
# 309 "main.cu"
int rule_size,
# 309 "main.cu"
int *d_total){
# 310 "main.cu"
{
# 312 "main.cu"
 int __cuda_local_var_62757_9_non_const_start;
# 313 "main.cu"
 int __cuda_local_var_62758_9_non_const_threadSize;
# 314 "main.cu"
 int __cuda_local_var_62759_9_non_const_total;
# 312 "main.cu"
__cuda_local_var_62757_9_non_const_start = ((int)(((threadIdx.x) * (gridDim.x)) + (blockIdx.x)));
# 313 "main.cu"
__cuda_local_var_62758_9_non_const_threadSize = ((int)((gridDim.x) * (blockDim.x)));
# 314 "main.cu"
__cuda_local_var_62759_9_non_const_total = 0;
# 317 "main.cu"
if (__cuda_local_var_62757_9_non_const_start > rule_size) {
# 317 "main.cu"
return; } {
# 318 "main.cu"
 int i;
# 318 "main.cu"
i = __cuda_local_var_62757_9_non_const_start;
# 318 "main.cu"
for (; (i < rule_size); i += __cuda_local_var_62758_9_non_const_threadSize)
# 318 "main.cu"
{ {
# 322 "main.cu"
 int j;
# 322 "main.cu"
j = 0;
# 322 "main.cu"

#pragma unroll
for (; (j < i); j++)
# 322 "main.cu"
{
# 324 "main.cu"
if (((int)((filterSet[i]).srcIPLen_)) > ((int)((filterSet[j]).srcIPLen_)))
# 324 "main.cu"
{
# 325 "main.cu"
if ((_Z9genPrefixjh(((filterSet[i]).srcIP_), ((filterSet[j]).srcIPLen_))) == ((filterSet[j]).srcIP_))
# 325 "main.cu"
{
# 326 "main.cu"
if (((!((filterSet[i]).pro_num_)) || (!((filterSet[j]).pro_num_))) || (((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)))
# 326 "main.cu"
{
# 327 "main.cu"
if (((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) >= ((filterSet[j]).destPortleft_))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) <= ((filterSet[j]).destPortright_)))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)))) && ((((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) >= ((filterSet[j]).srcPortleft_))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) <= ((filterSet[j]).srcPortright_)))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)))))
# 343 "main.cu"
{
# 346 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) > ((int)((filterSet[j]).destIPLen_)))
# 346 "main.cu"
{
# 347 "main.cu"
if ((_Z9genPrefixjh(((filterSet[i]).destIP_), ((filterSet[j]).destIPLen_))) == ((filterSet[j]).destIP_))
# 347 "main.cu"
{
# 350 "main.cu"
if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))
# 354 "main.cu"
{
# 354 "main.cu"
} else {
# 358 "main.cu"
__cuda_local_var_62759_9_non_const_total++; }
# 360 "main.cu"
}
# 361 "main.cu"
}
# 363 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) < ((int)((filterSet[j]).destIPLen_)))
# 363 "main.cu"
{
# 364 "main.cu"
if ((_Z9genPrefixjh(((filterSet[j]).destIP_), ((filterSet[i]).destIPLen_))) == ((filterSet[i]).destIP_))
# 364 "main.cu"
{
# 376 "main.cu"
__cuda_local_var_62759_9_non_const_total++;
# 378 "main.cu"
}
# 379 "main.cu"
}
# 381 "main.cu"
if (((int)((filterSet[i]).destIPLen_)) == ((int)((filterSet[j]).destIPLen_)))
# 381 "main.cu"
{
# 382 "main.cu"
if (((filterSet[i]).destIP_) == ((filterSet[j]).destIP_))
# 382 "main.cu"
{
# 385 "main.cu"
if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))
# 389 "main.cu"
{
# 389 "main.cu"
} else {
# 393 "main.cu"
__cuda_local_var_62759_9_non_const_total++; }
# 396 "main.cu"
}
# 397 "main.cu"
}
# 398 "main.cu"
}
# 400 "main.cu"
}
# 401 "main.cu"
}
# 402 "main.cu"
}
# 403 "main.cu"
} }
# 404 "main.cu"
} }
# 406 "main.cu"
__cuda_local_var_62759_9_non_const_total = (_Z14blockReduceSumi(__cuda_local_var_62759_9_non_const_total));
# 407 "main.cu"
if ((threadIdx.x) == 0U) {
# 408 "main.cu"
(d_total[(blockIdx.x)]) = __cuda_local_var_62759_9_non_const_total; }
# 409 "main.cu"
}}
