#define __SYSCALL_32BIT_ARG_BYTES 12
#include "SYS.h"

#ifndef SYS_exchangedata
#error "SYS_exchangedata not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__)
__SYSCALL2(exchangedata, exchangedata, 3, cerror_nocancel)
#endif

