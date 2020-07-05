return {
	srcs={
		-- <cd src && printf "\t\t'%s',\n" src/*/*.c src/malloc/mallocng/*.c
		'src/aio/aio.c',
		'src/aio/aio_suspend.c',
		'src/aio/lio_listio.c',
		'src/complex/__cexp.c',
		'src/complex/__cexpf.c',
		'src/complex/cabs.c',
		'src/complex/cabsf.c',
		'src/complex/cabsl.c',
		'src/complex/cacos.c',
		'src/complex/cacosf.c',
		'src/complex/cacosh.c',
		'src/complex/cacoshf.c',
		'src/complex/cacoshl.c',
		'src/complex/cacosl.c',
		'src/complex/carg.c',
		'src/complex/cargf.c',
		'src/complex/cargl.c',
		'src/complex/casin.c',
		'src/complex/casinf.c',
		'src/complex/casinh.c',
		'src/complex/casinhf.c',
		'src/complex/casinhl.c',
		'src/complex/casinl.c',
		'src/complex/catan.c',
		'src/complex/catanf.c',
		'src/complex/catanh.c',
		'src/complex/catanhf.c',
		'src/complex/catanhl.c',
		'src/complex/catanl.c',
		'src/complex/ccos.c',
		'src/complex/ccosf.c',
		'src/complex/ccosh.c',
		'src/complex/ccoshf.c',
		'src/complex/ccoshl.c',
		'src/complex/ccosl.c',
		'src/complex/cexp.c',
		'src/complex/cexpf.c',
		'src/complex/cexpl.c',
		'src/complex/cimag.c',
		'src/complex/cimagf.c',
		'src/complex/cimagl.c',
		'src/complex/clog.c',
		'src/complex/clogf.c',
		'src/complex/clogl.c',
		'src/complex/conj.c',
		'src/complex/conjf.c',
		'src/complex/conjl.c',
		'src/complex/cpow.c',
		'src/complex/cpowf.c',
		'src/complex/cpowl.c',
		'src/complex/cproj.c',
		'src/complex/cprojf.c',
		'src/complex/cprojl.c',
		'src/complex/creal.c',
		'src/complex/crealf.c',
		'src/complex/creall.c',
		'src/complex/csin.c',
		'src/complex/csinf.c',
		'src/complex/csinh.c',
		'src/complex/csinhf.c',
		'src/complex/csinhl.c',
		'src/complex/csinl.c',
		'src/complex/csqrt.c',
		'src/complex/csqrtf.c',
		'src/complex/csqrtl.c',
		'src/complex/ctan.c',
		'src/complex/ctanf.c',
		'src/complex/ctanh.c',
		'src/complex/ctanhf.c',
		'src/complex/ctanhl.c',
		'src/complex/ctanl.c',
		'src/conf/confstr.c',
		'src/conf/fpathconf.c',
		'src/conf/legacy.c',
		'src/conf/pathconf.c',
		'src/conf/sysconf.c',
		'src/crypt/crypt.c',
		'src/crypt/crypt_blowfish.c',
		'src/crypt/crypt_des.c',
		'src/crypt/crypt_md5.c',
		'src/crypt/crypt_r.c',
		'src/crypt/crypt_sha256.c',
		'src/crypt/crypt_sha512.c',
		'src/crypt/encrypt.c',
		'src/ctype/__ctype_b_loc.c',
		'src/ctype/__ctype_get_mb_cur_max.c',
		'src/ctype/__ctype_tolower_loc.c',
		'src/ctype/__ctype_toupper_loc.c',
		'src/ctype/isalnum.c',
		'src/ctype/isalpha.c',
		'src/ctype/isascii.c',
		'src/ctype/isblank.c',
		'src/ctype/iscntrl.c',
		'src/ctype/isdigit.c',
		'src/ctype/isgraph.c',
		'src/ctype/islower.c',
		'src/ctype/isprint.c',
		'src/ctype/ispunct.c',
		'src/ctype/isspace.c',
		'src/ctype/isupper.c',
		'src/ctype/iswalnum.c',
		'src/ctype/iswalpha.c',
		'src/ctype/iswblank.c',
		'src/ctype/iswcntrl.c',
		'src/ctype/iswctype.c',
		'src/ctype/iswdigit.c',
		'src/ctype/iswgraph.c',
		'src/ctype/iswlower.c',
		'src/ctype/iswprint.c',
		'src/ctype/iswpunct.c',
		'src/ctype/iswspace.c',
		'src/ctype/iswupper.c',
		'src/ctype/iswxdigit.c',
		'src/ctype/isxdigit.c',
		'src/ctype/toascii.c',
		'src/ctype/tolower.c',
		'src/ctype/toupper.c',
		'src/ctype/towctrans.c',
		'src/ctype/wcswidth.c',
		'src/ctype/wctrans.c',
		'src/ctype/wcwidth.c',
		'src/dirent/alphasort.c',
		'src/dirent/closedir.c',
		'src/dirent/dirfd.c',
		'src/dirent/fdopendir.c',
		'src/dirent/opendir.c',
		'src/dirent/readdir.c',
		'src/dirent/readdir_r.c',
		'src/dirent/rewinddir.c',
		'src/dirent/scandir.c',
		'src/dirent/seekdir.c',
		'src/dirent/telldir.c',
		'src/dirent/versionsort.c',
		'src/env/__environ.c',
		'src/env/__init_tls.c',
		'src/env/__libc_start_main.c',
		'src/env/__reset_tls.c',
		'src/env/__stack_chk_fail.c',
		'src/env/clearenv.c',
		'src/env/getenv.c',
		'src/env/putenv.c',
		'src/env/secure_getenv.c',
		'src/env/setenv.c',
		'src/env/unsetenv.c',
		'src/errno/__errno_location.c',
		'src/errno/strerror.c',
		'src/exit/_Exit.c',
		'src/exit/abort.c',
		'src/exit/assert.c',
		'src/exit/at_quick_exit.c',
		'src/exit/atexit.c',
		'src/exit/exit.c',
		'src/exit/quick_exit.c',
		'src/fcntl/creat.c',
		'src/fcntl/fcntl.c',
		'src/fcntl/open.c',
		'src/fcntl/openat.c',
		'src/fcntl/posix_fadvise.c',
		'src/fcntl/posix_fallocate.c',
		'src/fenv/__flt_rounds.c',
		'src/fenv/fegetexceptflag.c',
		'src/fenv/feholdexcept.c',
		'src/fenv/fenv.c',
		'src/fenv/fesetexceptflag.c',
		'src/fenv/fesetround.c',
		'src/fenv/feupdateenv.c',
		'src/internal/defsysinfo.c',
		'src/internal/floatscan.c',
		'src/internal/intscan.c',
		'src/internal/libc.c',
		'src/internal/procfdname.c',
		'src/internal/shgetc.c',
		'src/internal/syscall_ret.c',
		'src/internal/vdso.c',
		'src/internal/version.c',
		'src/ipc/ftok.c',
		'src/ipc/msgctl.c',
		'src/ipc/msgget.c',
		'src/ipc/msgrcv.c',
		'src/ipc/msgsnd.c',
		'src/ipc/semctl.c',
		'src/ipc/semget.c',
		'src/ipc/semop.c',
		'src/ipc/semtimedop.c',
		'src/ipc/shmat.c',
		'src/ipc/shmctl.c',
		'src/ipc/shmdt.c',
		'src/ipc/shmget.c',
		'src/ldso/__dlsym.c',
		'src/ldso/dl_iterate_phdr.c',
		'src/ldso/dladdr.c',
		'src/ldso/dlclose.c',
		'src/ldso/dlerror.c',
		'src/ldso/dlinfo.c',
		'src/ldso/dlopen.c',
		'src/ldso/dlsym.c',
		'src/ldso/tlsdesc.c',
		'src/legacy/cuserid.c',
		'src/legacy/daemon.c',
		'src/legacy/err.c',
		'src/legacy/euidaccess.c',
		'src/legacy/ftw.c',
		'src/legacy/futimes.c',
		'src/legacy/getdtablesize.c',
		'src/legacy/getloadavg.c',
		'src/legacy/getpagesize.c',
		'src/legacy/getpass.c',
		'src/legacy/getusershell.c',
		'src/legacy/isastream.c',
		'src/legacy/lutimes.c',
		'src/legacy/ulimit.c',
		'src/legacy/utmpx.c',
		'src/legacy/valloc.c',
		'src/linux/adjtime.c',
		'src/linux/adjtimex.c',
		'src/linux/arch_prctl.c',
		'src/linux/brk.c',
		'src/linux/cache.c',
		'src/linux/cap.c',
		'src/linux/chroot.c',
		'src/linux/clock_adjtime.c',
		'src/linux/clone.c',
		'src/linux/copy_file_range.c',
		'src/linux/epoll.c',
		'src/linux/eventfd.c',
		'src/linux/fallocate.c',
		'src/linux/fanotify.c',
		'src/linux/flock.c',
		'src/linux/getdents.c',
		'src/linux/getrandom.c',
		'src/linux/inotify.c',
		'src/linux/ioperm.c',
		'src/linux/iopl.c',
		'src/linux/klogctl.c',
		'src/linux/membarrier.c',
		'src/linux/memfd_create.c',
		'src/linux/mlock2.c',
		'src/linux/module.c',
		'src/linux/mount.c',
		'src/linux/name_to_handle_at.c',
		'src/linux/open_by_handle_at.c',
		'src/linux/personality.c',
		'src/linux/pivot_root.c',
		'src/linux/ppoll.c',
		'src/linux/prctl.c',
		'src/linux/prlimit.c',
		'src/linux/process_vm.c',
		'src/linux/ptrace.c',
		'src/linux/quotactl.c',
		'src/linux/readahead.c',
		'src/linux/reboot.c',
		'src/linux/remap_file_pages.c',
		'src/linux/sbrk.c',
		'src/linux/sendfile.c',
		'src/linux/setfsgid.c',
		'src/linux/setfsuid.c',
		'src/linux/setgroups.c',
		'src/linux/sethostname.c',
		'src/linux/setns.c',
		'src/linux/settimeofday.c',
		'src/linux/signalfd.c',
		'src/linux/splice.c',
		'src/linux/stime.c',
		'src/linux/swap.c',
		'src/linux/sync_file_range.c',
		'src/linux/syncfs.c',
		'src/linux/sysinfo.c',
		'src/linux/tee.c',
		'src/linux/timerfd.c',
		'src/linux/unshare.c',
		'src/linux/utimes.c',
		'src/linux/vhangup.c',
		'src/linux/vmsplice.c',
		'src/linux/wait3.c',
		'src/linux/wait4.c',
		'src/linux/xattr.c',
		'src/locale/__lctrans.c',
		'src/locale/__mo_lookup.c',
		'src/locale/bind_textdomain_codeset.c',
		'src/locale/c_locale.c',
		'src/locale/catclose.c',
		'src/locale/catgets.c',
		'src/locale/catopen.c',
		'src/locale/dcngettext.c',
		'src/locale/duplocale.c',
		'src/locale/freelocale.c',
		'src/locale/iconv.c',
		'src/locale/iconv_close.c',
		'src/locale/langinfo.c',
		'src/locale/locale_map.c',
		'src/locale/localeconv.c',
		'src/locale/newlocale.c',
		'src/locale/pleval.c',
		'src/locale/setlocale.c',
		'src/locale/strcoll.c',
		'src/locale/strfmon.c',
		'src/locale/strxfrm.c',
		'src/locale/textdomain.c',
		'src/locale/uselocale.c',
		'src/locale/wcscoll.c',
		'src/locale/wcsxfrm.c',
		'src/malloc/calloc.c',
		'src/malloc/lite_malloc.c',
		'src/malloc/memalign.c',
		'src/malloc/posix_memalign.c',
		'src/malloc/replaced.c',
		'src/math/__cos.c',
		'src/math/__cosdf.c',
		'src/math/__cosl.c',
		'src/math/__expo2.c',
		'src/math/__expo2f.c',
		'src/math/__fpclassify.c',
		'src/math/__fpclassifyf.c',
		'src/math/__fpclassifyl.c',
		'src/math/__invtrigl.c',
		'src/math/__math_divzero.c',
		'src/math/__math_divzerof.c',
		'src/math/__math_invalid.c',
		'src/math/__math_invalidf.c',
		'src/math/__math_oflow.c',
		'src/math/__math_oflowf.c',
		'src/math/__math_uflow.c',
		'src/math/__math_uflowf.c',
		'src/math/__math_xflow.c',
		'src/math/__math_xflowf.c',
		'src/math/__polevll.c',
		'src/math/__rem_pio2.c',
		'src/math/__rem_pio2_large.c',
		'src/math/__rem_pio2f.c',
		'src/math/__rem_pio2l.c',
		'src/math/__signbit.c',
		'src/math/__signbitf.c',
		'src/math/__signbitl.c',
		'src/math/__sin.c',
		'src/math/__sindf.c',
		'src/math/__sinl.c',
		'src/math/__tan.c',
		'src/math/__tandf.c',
		'src/math/__tanl.c',
		'src/math/acos.c',
		'src/math/acosf.c',
		'src/math/acosh.c',
		'src/math/acoshf.c',
		'src/math/acoshl.c',
		'src/math/acosl.c',
		'src/math/asin.c',
		'src/math/asinf.c',
		'src/math/asinh.c',
		'src/math/asinhf.c',
		'src/math/asinhl.c',
		'src/math/asinl.c',
		'src/math/atan.c',
		'src/math/atan2.c',
		'src/math/atan2f.c',
		'src/math/atan2l.c',
		'src/math/atanf.c',
		'src/math/atanh.c',
		'src/math/atanhf.c',
		'src/math/atanhl.c',
		'src/math/atanl.c',
		'src/math/cbrt.c',
		'src/math/cbrtf.c',
		'src/math/cbrtl.c',
		'src/math/ceil.c',
		'src/math/ceilf.c',
		'src/math/ceill.c',
		'src/math/copysign.c',
		'src/math/copysignf.c',
		'src/math/copysignl.c',
		'src/math/cos.c',
		'src/math/cosf.c',
		'src/math/cosh.c',
		'src/math/coshf.c',
		'src/math/coshl.c',
		'src/math/cosl.c',
		'src/math/erf.c',
		'src/math/erff.c',
		'src/math/erfl.c',
		'src/math/exp.c',
		'src/math/exp10.c',
		'src/math/exp10f.c',
		'src/math/exp10l.c',
		'src/math/exp2.c',
		'src/math/exp2f.c',
		'src/math/exp2f_data.c',
		'src/math/exp2l.c',
		'src/math/exp_data.c',
		'src/math/expf.c',
		'src/math/expl.c',
		'src/math/expm1.c',
		'src/math/expm1f.c',
		'src/math/expm1l.c',
		'src/math/fabs.c',
		'src/math/fabsf.c',
		'src/math/fabsl.c',
		'src/math/fdim.c',
		'src/math/fdimf.c',
		'src/math/fdiml.c',
		'src/math/finite.c',
		'src/math/finitef.c',
		'src/math/floor.c',
		'src/math/floorf.c',
		'src/math/floorl.c',
		'src/math/fma.c',
		'src/math/fmaf.c',
		'src/math/fmal.c',
		'src/math/fmax.c',
		'src/math/fmaxf.c',
		'src/math/fmaxl.c',
		'src/math/fmin.c',
		'src/math/fminf.c',
		'src/math/fminl.c',
		'src/math/fmod.c',
		'src/math/fmodf.c',
		'src/math/fmodl.c',
		'src/math/frexp.c',
		'src/math/frexpf.c',
		'src/math/frexpl.c',
		'src/math/hypot.c',
		'src/math/hypotf.c',
		'src/math/hypotl.c',
		'src/math/ilogb.c',
		'src/math/ilogbf.c',
		'src/math/ilogbl.c',
		'src/math/j0.c',
		'src/math/j0f.c',
		'src/math/j1.c',
		'src/math/j1f.c',
		'src/math/jn.c',
		'src/math/jnf.c',
		'src/math/ldexp.c',
		'src/math/ldexpf.c',
		'src/math/ldexpl.c',
		'src/math/lgamma.c',
		'src/math/lgamma_r.c',
		'src/math/lgammaf.c',
		'src/math/lgammaf_r.c',
		'src/math/lgammal.c',
		'src/math/llrint.c',
		'src/math/llrintf.c',
		'src/math/llrintl.c',
		'src/math/llround.c',
		'src/math/llroundf.c',
		'src/math/llroundl.c',
		'src/math/log.c',
		'src/math/log10.c',
		'src/math/log10f.c',
		'src/math/log10l.c',
		'src/math/log1p.c',
		'src/math/log1pf.c',
		'src/math/log1pl.c',
		'src/math/log2.c',
		'src/math/log2_data.c',
		'src/math/log2f.c',
		'src/math/log2f_data.c',
		'src/math/log2l.c',
		'src/math/log_data.c',
		'src/math/logb.c',
		'src/math/logbf.c',
		'src/math/logbl.c',
		'src/math/logf.c',
		'src/math/logf_data.c',
		'src/math/logl.c',
		'src/math/lrint.c',
		'src/math/lrintf.c',
		'src/math/lrintl.c',
		'src/math/lround.c',
		'src/math/lroundf.c',
		'src/math/lroundl.c',
		'src/math/modf.c',
		'src/math/modff.c',
		'src/math/modfl.c',
		'src/math/nan.c',
		'src/math/nanf.c',
		'src/math/nanl.c',
		'src/math/nearbyint.c',
		'src/math/nearbyintf.c',
		'src/math/nearbyintl.c',
		'src/math/nextafter.c',
		'src/math/nextafterf.c',
		'src/math/nextafterl.c',
		'src/math/nexttoward.c',
		'src/math/nexttowardf.c',
		'src/math/nexttowardl.c',
		'src/math/pow.c',
		'src/math/pow_data.c',
		'src/math/powf.c',
		'src/math/powf_data.c',
		'src/math/powl.c',
		'src/math/remainder.c',
		'src/math/remainderf.c',
		'src/math/remainderl.c',
		'src/math/remquo.c',
		'src/math/remquof.c',
		'src/math/remquol.c',
		'src/math/rint.c',
		'src/math/rintf.c',
		'src/math/rintl.c',
		'src/math/round.c',
		'src/math/roundf.c',
		'src/math/roundl.c',
		'src/math/scalb.c',
		'src/math/scalbf.c',
		'src/math/scalbln.c',
		'src/math/scalblnf.c',
		'src/math/scalblnl.c',
		'src/math/scalbn.c',
		'src/math/scalbnf.c',
		'src/math/scalbnl.c',
		'src/math/signgam.c',
		'src/math/significand.c',
		'src/math/significandf.c',
		'src/math/sin.c',
		'src/math/sincos.c',
		'src/math/sincosf.c',
		'src/math/sincosl.c',
		'src/math/sinf.c',
		'src/math/sinh.c',
		'src/math/sinhf.c',
		'src/math/sinhl.c',
		'src/math/sinl.c',
		'src/math/sqrt.c',
		'src/math/sqrtf.c',
		'src/math/sqrtl.c',
		'src/math/tan.c',
		'src/math/tanf.c',
		'src/math/tanh.c',
		'src/math/tanhf.c',
		'src/math/tanhl.c',
		'src/math/tanl.c',
		'src/math/tgamma.c',
		'src/math/tgammaf.c',
		'src/math/tgammal.c',
		'src/math/trunc.c',
		'src/math/truncf.c',
		'src/math/truncl.c',
		'src/misc/a64l.c',
		'src/misc/basename.c',
		'src/misc/dirname.c',
		'src/misc/ffs.c',
		'src/misc/ffsl.c',
		'src/misc/ffsll.c',
		'src/misc/fmtmsg.c',
		'src/misc/forkpty.c',
		'src/misc/get_current_dir_name.c',
		'src/misc/getauxval.c',
		'src/misc/getdomainname.c',
		'src/misc/getentropy.c',
		'src/misc/gethostid.c',
		'src/misc/getopt.c',
		'src/misc/getopt_long.c',
		'src/misc/getpriority.c',
		'src/misc/getresgid.c',
		'src/misc/getresuid.c',
		'src/misc/getrlimit.c',
		'src/misc/getrusage.c',
		'src/misc/getsubopt.c',
		'src/misc/initgroups.c',
		'src/misc/ioctl.c',
		'src/misc/issetugid.c',
		'src/misc/lockf.c',
		'src/misc/login_tty.c',
		'src/misc/mntent.c',
		'src/misc/nftw.c',
		'src/misc/openpty.c',
		'src/misc/ptsname.c',
		'src/misc/pty.c',
		'src/misc/realpath.c',
		'src/misc/setdomainname.c',
		'src/misc/setpriority.c',
		'src/misc/setrlimit.c',
		'src/misc/syscall.c',
		'src/misc/syslog.c',
		'src/misc/uname.c',
		'src/misc/wordexp.c',
		'src/mman/madvise.c',
		'src/mman/mincore.c',
		'src/mman/mlock.c',
		'src/mman/mlockall.c',
		'src/mman/mmap.c',
		'src/mman/mprotect.c',
		'src/mman/mremap.c',
		'src/mman/msync.c',
		'src/mman/munlock.c',
		'src/mman/munlockall.c',
		'src/mman/munmap.c',
		'src/mman/posix_madvise.c',
		'src/mman/shm_open.c',
		'src/mq/mq_close.c',
		'src/mq/mq_getattr.c',
		'src/mq/mq_notify.c',
		'src/mq/mq_open.c',
		'src/mq/mq_receive.c',
		'src/mq/mq_send.c',
		'src/mq/mq_setattr.c',
		'src/mq/mq_timedreceive.c',
		'src/mq/mq_timedsend.c',
		'src/mq/mq_unlink.c',
		'src/multibyte/btowc.c',
		'src/multibyte/c16rtomb.c',
		'src/multibyte/c32rtomb.c',
		'src/multibyte/internal.c',
		'src/multibyte/mblen.c',
		'src/multibyte/mbrlen.c',
		'src/multibyte/mbrtoc16.c',
		'src/multibyte/mbrtoc32.c',
		'src/multibyte/mbrtowc.c',
		'src/multibyte/mbsinit.c',
		'src/multibyte/mbsnrtowcs.c',
		'src/multibyte/mbsrtowcs.c',
		'src/multibyte/mbstowcs.c',
		'src/multibyte/mbtowc.c',
		'src/multibyte/wcrtomb.c',
		'src/multibyte/wcsnrtombs.c',
		'src/multibyte/wcsrtombs.c',
		'src/multibyte/wcstombs.c',
		'src/multibyte/wctob.c',
		'src/multibyte/wctomb.c',
		'src/network/accept.c',
		'src/network/accept4.c',
		'src/network/bind.c',
		'src/network/connect.c',
		'src/network/dn_comp.c',
		'src/network/dn_expand.c',
		'src/network/dn_skipname.c',
		'src/network/dns_parse.c',
		'src/network/ent.c',
		'src/network/ether.c',
		'src/network/freeaddrinfo.c',
		'src/network/gai_strerror.c',
		'src/network/getaddrinfo.c',
		'src/network/gethostbyaddr.c',
		'src/network/gethostbyaddr_r.c',
		'src/network/gethostbyname.c',
		'src/network/gethostbyname2.c',
		'src/network/gethostbyname2_r.c',
		'src/network/gethostbyname_r.c',
		'src/network/getifaddrs.c',
		'src/network/getnameinfo.c',
		'src/network/getpeername.c',
		'src/network/getservbyname.c',
		'src/network/getservbyname_r.c',
		'src/network/getservbyport.c',
		'src/network/getservbyport_r.c',
		'src/network/getsockname.c',
		'src/network/getsockopt.c',
		'src/network/h_errno.c',
		'src/network/herror.c',
		'src/network/hstrerror.c',
		'src/network/htonl.c',
		'src/network/htons.c',
		'src/network/if_freenameindex.c',
		'src/network/if_indextoname.c',
		'src/network/if_nameindex.c',
		'src/network/if_nametoindex.c',
		'src/network/in6addr_any.c',
		'src/network/in6addr_loopback.c',
		'src/network/inet_addr.c',
		'src/network/inet_aton.c',
		'src/network/inet_legacy.c',
		'src/network/inet_ntoa.c',
		'src/network/inet_ntop.c',
		'src/network/inet_pton.c',
		'src/network/listen.c',
		'src/network/lookup_ipliteral.c',
		'src/network/lookup_name.c',
		'src/network/lookup_serv.c',
		'src/network/netlink.c',
		'src/network/netname.c',
		'src/network/ns_parse.c',
		'src/network/ntohl.c',
		'src/network/ntohs.c',
		'src/network/proto.c',
		'src/network/recv.c',
		'src/network/recvfrom.c',
		'src/network/recvmmsg.c',
		'src/network/recvmsg.c',
		'src/network/res_init.c',
		'src/network/res_mkquery.c',
		'src/network/res_msend.c',
		'src/network/res_query.c',
		'src/network/res_querydomain.c',
		'src/network/res_send.c',
		'src/network/res_state.c',
		'src/network/resolvconf.c',
		'src/network/send.c',
		'src/network/sendmmsg.c',
		'src/network/sendmsg.c',
		'src/network/sendto.c',
		'src/network/serv.c',
		'src/network/setsockopt.c',
		'src/network/shutdown.c',
		'src/network/sockatmark.c',
		'src/network/socket.c',
		'src/network/socketpair.c',
		'src/passwd/fgetgrent.c',
		'src/passwd/fgetpwent.c',
		'src/passwd/fgetspent.c',
		'src/passwd/getgr_a.c',
		'src/passwd/getgr_r.c',
		'src/passwd/getgrent.c',
		'src/passwd/getgrent_a.c',
		'src/passwd/getgrouplist.c',
		'src/passwd/getpw_a.c',
		'src/passwd/getpw_r.c',
		'src/passwd/getpwent.c',
		'src/passwd/getpwent_a.c',
		'src/passwd/getspent.c',
		'src/passwd/getspnam.c',
		'src/passwd/getspnam_r.c',
		'src/passwd/lckpwdf.c',
		'src/passwd/nscd_query.c',
		'src/passwd/putgrent.c',
		'src/passwd/putpwent.c',
		'src/passwd/putspent.c',
		'src/prng/__rand48_step.c',
		'src/prng/__seed48.c',
		'src/prng/drand48.c',
		'src/prng/lcong48.c',
		'src/prng/lrand48.c',
		'src/prng/mrand48.c',
		'src/prng/rand.c',
		'src/prng/rand_r.c',
		'src/prng/random.c',
		'src/prng/seed48.c',
		'src/prng/srand48.c',
		'src/process/execl.c',
		'src/process/execle.c',
		'src/process/execlp.c',
		'src/process/execv.c',
		'src/process/execve.c',
		'src/process/execvp.c',
		'src/process/fexecve.c',
		'src/process/fork.c',
		'src/process/posix_spawn.c',
		'src/process/posix_spawn_file_actions_addchdir.c',
		'src/process/posix_spawn_file_actions_addclose.c',
		'src/process/posix_spawn_file_actions_adddup2.c',
		'src/process/posix_spawn_file_actions_addfchdir.c',
		'src/process/posix_spawn_file_actions_addopen.c',
		'src/process/posix_spawn_file_actions_destroy.c',
		'src/process/posix_spawn_file_actions_init.c',
		'src/process/posix_spawnattr_destroy.c',
		'src/process/posix_spawnattr_getflags.c',
		'src/process/posix_spawnattr_getpgroup.c',
		'src/process/posix_spawnattr_getsigdefault.c',
		'src/process/posix_spawnattr_getsigmask.c',
		'src/process/posix_spawnattr_init.c',
		'src/process/posix_spawnattr_sched.c',
		'src/process/posix_spawnattr_setflags.c',
		'src/process/posix_spawnattr_setpgroup.c',
		'src/process/posix_spawnattr_setsigdefault.c',
		'src/process/posix_spawnattr_setsigmask.c',
		'src/process/posix_spawnp.c',
		'src/process/system.c',
		'src/process/vfork.c',
		'src/process/wait.c',
		'src/process/waitid.c',
		'src/process/waitpid.c',
		'src/regex/fnmatch.c',
		'src/regex/glob.c',
		'src/regex/regcomp.c',
		'src/regex/regerror.c',
		'src/regex/regexec.c',
		'src/regex/tre-mem.c',
		'src/sched/affinity.c',
		'src/sched/sched_cpucount.c',
		'src/sched/sched_get_priority_max.c',
		'src/sched/sched_getcpu.c',
		'src/sched/sched_getparam.c',
		'src/sched/sched_getscheduler.c',
		'src/sched/sched_rr_get_interval.c',
		'src/sched/sched_setparam.c',
		'src/sched/sched_setscheduler.c',
		'src/sched/sched_yield.c',
		'src/search/hsearch.c',
		'src/search/insque.c',
		'src/search/lsearch.c',
		'src/search/tdelete.c',
		'src/search/tdestroy.c',
		'src/search/tfind.c',
		'src/search/tsearch.c',
		'src/search/twalk.c',
		'src/select/poll.c',
		'src/select/pselect.c',
		'src/select/select.c',
		'src/setjmp/longjmp.c',
		'src/setjmp/setjmp.c',
		'src/signal/block.c',
		'src/signal/getitimer.c',
		'src/signal/kill.c',
		'src/signal/killpg.c',
		'src/signal/psiginfo.c',
		'src/signal/psignal.c',
		'src/signal/raise.c',
		'src/signal/restore.c',
		'src/signal/setitimer.c',
		'src/signal/sigaction.c',
		'src/signal/sigaddset.c',
		'src/signal/sigaltstack.c',
		'src/signal/sigandset.c',
		'src/signal/sigdelset.c',
		'src/signal/sigemptyset.c',
		'src/signal/sigfillset.c',
		'src/signal/sighold.c',
		'src/signal/sigignore.c',
		'src/signal/siginterrupt.c',
		'src/signal/sigisemptyset.c',
		'src/signal/sigismember.c',
		'src/signal/siglongjmp.c',
		'src/signal/signal.c',
		'src/signal/sigorset.c',
		'src/signal/sigpause.c',
		'src/signal/sigpending.c',
		'src/signal/sigprocmask.c',
		'src/signal/sigqueue.c',
		'src/signal/sigrelse.c',
		'src/signal/sigrtmax.c',
		'src/signal/sigrtmin.c',
		'src/signal/sigset.c',
		'src/signal/sigsetjmp.c',
		'src/signal/sigsetjmp_tail.c',
		'src/signal/sigsuspend.c',
		'src/signal/sigtimedwait.c',
		'src/signal/sigwait.c',
		'src/signal/sigwaitinfo.c',
		'src/stat/__xstat.c',
		'src/stat/chmod.c',
		'src/stat/fchmod.c',
		'src/stat/fchmodat.c',
		'src/stat/fstat.c',
		'src/stat/fstatat.c',
		'src/stat/futimens.c',
		'src/stat/futimesat.c',
		'src/stat/lchmod.c',
		'src/stat/lstat.c',
		'src/stat/mkdir.c',
		'src/stat/mkdirat.c',
		'src/stat/mkfifo.c',
		'src/stat/mkfifoat.c',
		'src/stat/mknod.c',
		'src/stat/mknodat.c',
		'src/stat/stat.c',
		'src/stat/statvfs.c',
		'src/stat/umask.c',
		'src/stat/utimensat.c',
		'src/stdio/__fclose_ca.c',
		'src/stdio/__fdopen.c',
		'src/stdio/__fmodeflags.c',
		'src/stdio/__fopen_rb_ca.c',
		'src/stdio/__lockfile.c',
		'src/stdio/__overflow.c',
		'src/stdio/__stdio_close.c',
		'src/stdio/__stdio_exit.c',
		'src/stdio/__stdio_read.c',
		'src/stdio/__stdio_seek.c',
		'src/stdio/__stdio_write.c',
		'src/stdio/__stdout_write.c',
		'src/stdio/__toread.c',
		'src/stdio/__towrite.c',
		'src/stdio/__uflow.c',
		'src/stdio/asprintf.c',
		'src/stdio/clearerr.c',
		'src/stdio/dprintf.c',
		'src/stdio/ext.c',
		'src/stdio/ext2.c',
		'src/stdio/fclose.c',
		'src/stdio/feof.c',
		'src/stdio/ferror.c',
		'src/stdio/fflush.c',
		'src/stdio/fgetc.c',
		'src/stdio/fgetln.c',
		'src/stdio/fgetpos.c',
		'src/stdio/fgets.c',
		'src/stdio/fgetwc.c',
		'src/stdio/fgetws.c',
		'src/stdio/fileno.c',
		'src/stdio/flockfile.c',
		'src/stdio/fmemopen.c',
		'src/stdio/fopen.c',
		'src/stdio/fopencookie.c',
		'src/stdio/fprintf.c',
		'src/stdio/fputc.c',
		'src/stdio/fputs.c',
		'src/stdio/fputwc.c',
		'src/stdio/fputws.c',
		'src/stdio/fread.c',
		'src/stdio/freopen.c',
		'src/stdio/fscanf.c',
		'src/stdio/fseek.c',
		'src/stdio/fsetpos.c',
		'src/stdio/ftell.c',
		'src/stdio/ftrylockfile.c',
		'src/stdio/funlockfile.c',
		'src/stdio/fwide.c',
		'src/stdio/fwprintf.c',
		'src/stdio/fwrite.c',
		'src/stdio/fwscanf.c',
		'src/stdio/getc.c',
		'src/stdio/getc_unlocked.c',
		'src/stdio/getchar.c',
		'src/stdio/getchar_unlocked.c',
		'src/stdio/getdelim.c',
		'src/stdio/getline.c',
		'src/stdio/gets.c',
		'src/stdio/getw.c',
		'src/stdio/getwc.c',
		'src/stdio/getwchar.c',
		'src/stdio/ofl.c',
		'src/stdio/ofl_add.c',
		'src/stdio/open_memstream.c',
		'src/stdio/open_wmemstream.c',
		'src/stdio/pclose.c',
		'src/stdio/perror.c',
		'src/stdio/popen.c',
		'src/stdio/printf.c',
		'src/stdio/putc.c',
		'src/stdio/putc_unlocked.c',
		'src/stdio/putchar.c',
		'src/stdio/putchar_unlocked.c',
		'src/stdio/puts.c',
		'src/stdio/putw.c',
		'src/stdio/putwc.c',
		'src/stdio/putwchar.c',
		'src/stdio/remove.c',
		'src/stdio/rename.c',
		'src/stdio/rewind.c',
		'src/stdio/scanf.c',
		'src/stdio/setbuf.c',
		'src/stdio/setbuffer.c',
		'src/stdio/setlinebuf.c',
		'src/stdio/setvbuf.c',
		'src/stdio/snprintf.c',
		'src/stdio/sprintf.c',
		'src/stdio/sscanf.c',
		'src/stdio/stderr.c',
		'src/stdio/stdin.c',
		'src/stdio/stdout.c',
		'src/stdio/swprintf.c',
		'src/stdio/swscanf.c',
		'src/stdio/tempnam.c',
		'src/stdio/tmpfile.c',
		'src/stdio/tmpnam.c',
		'src/stdio/ungetc.c',
		'src/stdio/ungetwc.c',
		'src/stdio/vasprintf.c',
		'src/stdio/vdprintf.c',
		'src/stdio/vfprintf.c',
		'src/stdio/vfscanf.c',
		'src/stdio/vfwprintf.c',
		'src/stdio/vfwscanf.c',
		'src/stdio/vprintf.c',
		'src/stdio/vscanf.c',
		'src/stdio/vsnprintf.c',
		'src/stdio/vsprintf.c',
		'src/stdio/vsscanf.c',
		'src/stdio/vswprintf.c',
		'src/stdio/vswscanf.c',
		'src/stdio/vwprintf.c',
		'src/stdio/vwscanf.c',
		'src/stdio/wprintf.c',
		'src/stdio/wscanf.c',
		'src/stdlib/abs.c',
		'src/stdlib/atof.c',
		'src/stdlib/atoi.c',
		'src/stdlib/atol.c',
		'src/stdlib/atoll.c',
		'src/stdlib/bsearch.c',
		'src/stdlib/div.c',
		'src/stdlib/ecvt.c',
		'src/stdlib/fcvt.c',
		'src/stdlib/gcvt.c',
		'src/stdlib/imaxabs.c',
		'src/stdlib/imaxdiv.c',
		'src/stdlib/labs.c',
		'src/stdlib/ldiv.c',
		'src/stdlib/llabs.c',
		'src/stdlib/lldiv.c',
		'src/stdlib/qsort.c',
		'src/stdlib/strtod.c',
		'src/stdlib/strtol.c',
		'src/stdlib/wcstod.c',
		'src/stdlib/wcstol.c',
		'src/string/bcmp.c',
		'src/string/bcopy.c',
		'src/string/bzero.c',
		'src/string/explicit_bzero.c',
		'src/string/index.c',
		'src/string/memccpy.c',
		'src/string/memchr.c',
		'src/string/memcmp.c',
		'src/string/memcpy.c',
		'src/string/memmem.c',
		'src/string/memmove.c',
		'src/string/mempcpy.c',
		'src/string/memrchr.c',
		'src/string/memset.c',
		'src/string/rindex.c',
		'src/string/stpcpy.c',
		'src/string/stpncpy.c',
		'src/string/strcasecmp.c',
		'src/string/strcasestr.c',
		'src/string/strcat.c',
		'src/string/strchr.c',
		'src/string/strchrnul.c',
		'src/string/strcmp.c',
		'src/string/strcpy.c',
		'src/string/strcspn.c',
		'src/string/strdup.c',
		'src/string/strerror_r.c',
		'src/string/strlcat.c',
		'src/string/strlcpy.c',
		'src/string/strlen.c',
		'src/string/strncasecmp.c',
		'src/string/strncat.c',
		'src/string/strncmp.c',
		'src/string/strncpy.c',
		'src/string/strndup.c',
		'src/string/strnlen.c',
		'src/string/strpbrk.c',
		'src/string/strrchr.c',
		'src/string/strsep.c',
		'src/string/strsignal.c',
		'src/string/strspn.c',
		'src/string/strstr.c',
		'src/string/strtok.c',
		'src/string/strtok_r.c',
		'src/string/strverscmp.c',
		'src/string/swab.c',
		'src/string/wcpcpy.c',
		'src/string/wcpncpy.c',
		'src/string/wcscasecmp.c',
		'src/string/wcscasecmp_l.c',
		'src/string/wcscat.c',
		'src/string/wcschr.c',
		'src/string/wcscmp.c',
		'src/string/wcscpy.c',
		'src/string/wcscspn.c',
		'src/string/wcsdup.c',
		'src/string/wcslen.c',
		'src/string/wcsncasecmp.c',
		'src/string/wcsncasecmp_l.c',
		'src/string/wcsncat.c',
		'src/string/wcsncmp.c',
		'src/string/wcsncpy.c',
		'src/string/wcsnlen.c',
		'src/string/wcspbrk.c',
		'src/string/wcsrchr.c',
		'src/string/wcsspn.c',
		'src/string/wcsstr.c',
		'src/string/wcstok.c',
		'src/string/wcswcs.c',
		'src/string/wmemchr.c',
		'src/string/wmemcmp.c',
		'src/string/wmemcpy.c',
		'src/string/wmemmove.c',
		'src/string/wmemset.c',
		'src/temp/__randname.c',
		'src/temp/mkdtemp.c',
		'src/temp/mkostemp.c',
		'src/temp/mkostemps.c',
		'src/temp/mkstemp.c',
		'src/temp/mkstemps.c',
		'src/temp/mktemp.c',
		'src/termios/cfgetospeed.c',
		'src/termios/cfmakeraw.c',
		'src/termios/cfsetospeed.c',
		'src/termios/tcdrain.c',
		'src/termios/tcflow.c',
		'src/termios/tcflush.c',
		'src/termios/tcgetattr.c',
		'src/termios/tcgetsid.c',
		'src/termios/tcsendbreak.c',
		'src/termios/tcsetattr.c',
		'src/thread/__lock.c',
		'src/thread/__set_thread_area.c',
		'src/thread/__syscall_cp.c',
		'src/thread/__timedwait.c',
		'src/thread/__tls_get_addr.c',
		'src/thread/__unmapself.c',
		'src/thread/__wait.c',
		'src/thread/call_once.c',
		'src/thread/clone.c',
		'src/thread/cnd_broadcast.c',
		'src/thread/cnd_destroy.c',
		'src/thread/cnd_init.c',
		'src/thread/cnd_signal.c',
		'src/thread/cnd_timedwait.c',
		'src/thread/cnd_wait.c',
		'src/thread/default_attr.c',
		'src/thread/lock_ptc.c',
		'src/thread/mtx_destroy.c',
		'src/thread/mtx_init.c',
		'src/thread/mtx_lock.c',
		'src/thread/mtx_timedlock.c',
		'src/thread/mtx_trylock.c',
		'src/thread/mtx_unlock.c',
		'src/thread/pthread_atfork.c',
		'src/thread/pthread_attr_destroy.c',
		'src/thread/pthread_attr_get.c',
		'src/thread/pthread_attr_init.c',
		'src/thread/pthread_attr_setdetachstate.c',
		'src/thread/pthread_attr_setguardsize.c',
		'src/thread/pthread_attr_setinheritsched.c',
		'src/thread/pthread_attr_setschedparam.c',
		'src/thread/pthread_attr_setschedpolicy.c',
		'src/thread/pthread_attr_setscope.c',
		'src/thread/pthread_attr_setstack.c',
		'src/thread/pthread_attr_setstacksize.c',
		'src/thread/pthread_barrier_destroy.c',
		'src/thread/pthread_barrier_init.c',
		'src/thread/pthread_barrier_wait.c',
		'src/thread/pthread_barrierattr_destroy.c',
		'src/thread/pthread_barrierattr_init.c',
		'src/thread/pthread_barrierattr_setpshared.c',
		'src/thread/pthread_cancel.c',
		'src/thread/pthread_cleanup_push.c',
		'src/thread/pthread_cond_broadcast.c',
		'src/thread/pthread_cond_destroy.c',
		'src/thread/pthread_cond_init.c',
		'src/thread/pthread_cond_signal.c',
		'src/thread/pthread_cond_timedwait.c',
		'src/thread/pthread_cond_wait.c',
		'src/thread/pthread_condattr_destroy.c',
		'src/thread/pthread_condattr_init.c',
		'src/thread/pthread_condattr_setclock.c',
		'src/thread/pthread_condattr_setpshared.c',
		'src/thread/pthread_create.c',
		'src/thread/pthread_detach.c',
		'src/thread/pthread_equal.c',
		'src/thread/pthread_getattr_np.c',
		'src/thread/pthread_getconcurrency.c',
		'src/thread/pthread_getcpuclockid.c',
		'src/thread/pthread_getschedparam.c',
		'src/thread/pthread_getspecific.c',
		'src/thread/pthread_join.c',
		'src/thread/pthread_key_create.c',
		'src/thread/pthread_kill.c',
		'src/thread/pthread_mutex_consistent.c',
		'src/thread/pthread_mutex_destroy.c',
		'src/thread/pthread_mutex_getprioceiling.c',
		'src/thread/pthread_mutex_init.c',
		'src/thread/pthread_mutex_lock.c',
		'src/thread/pthread_mutex_setprioceiling.c',
		'src/thread/pthread_mutex_timedlock.c',
		'src/thread/pthread_mutex_trylock.c',
		'src/thread/pthread_mutex_unlock.c',
		'src/thread/pthread_mutexattr_destroy.c',
		'src/thread/pthread_mutexattr_init.c',
		'src/thread/pthread_mutexattr_setprotocol.c',
		'src/thread/pthread_mutexattr_setpshared.c',
		'src/thread/pthread_mutexattr_setrobust.c',
		'src/thread/pthread_mutexattr_settype.c',
		'src/thread/pthread_once.c',
		'src/thread/pthread_rwlock_destroy.c',
		'src/thread/pthread_rwlock_init.c',
		'src/thread/pthread_rwlock_rdlock.c',
		'src/thread/pthread_rwlock_timedrdlock.c',
		'src/thread/pthread_rwlock_timedwrlock.c',
		'src/thread/pthread_rwlock_tryrdlock.c',
		'src/thread/pthread_rwlock_trywrlock.c',
		'src/thread/pthread_rwlock_unlock.c',
		'src/thread/pthread_rwlock_wrlock.c',
		'src/thread/pthread_rwlockattr_destroy.c',
		'src/thread/pthread_rwlockattr_init.c',
		'src/thread/pthread_rwlockattr_setpshared.c',
		'src/thread/pthread_self.c',
		'src/thread/pthread_setattr_default_np.c',
		'src/thread/pthread_setcancelstate.c',
		'src/thread/pthread_setcanceltype.c',
		'src/thread/pthread_setconcurrency.c',
		'src/thread/pthread_setname_np.c',
		'src/thread/pthread_setschedparam.c',
		'src/thread/pthread_setschedprio.c',
		'src/thread/pthread_setspecific.c',
		'src/thread/pthread_sigmask.c',
		'src/thread/pthread_spin_destroy.c',
		'src/thread/pthread_spin_init.c',
		'src/thread/pthread_spin_lock.c',
		'src/thread/pthread_spin_trylock.c',
		'src/thread/pthread_spin_unlock.c',
		'src/thread/pthread_testcancel.c',
		'src/thread/sem_destroy.c',
		'src/thread/sem_getvalue.c',
		'src/thread/sem_init.c',
		'src/thread/sem_open.c',
		'src/thread/sem_post.c',
		'src/thread/sem_timedwait.c',
		'src/thread/sem_trywait.c',
		'src/thread/sem_unlink.c',
		'src/thread/sem_wait.c',
		'src/thread/synccall.c',
		'src/thread/syscall_cp.c',
		'src/thread/thrd_create.c',
		'src/thread/thrd_exit.c',
		'src/thread/thrd_join.c',
		'src/thread/thrd_sleep.c',
		'src/thread/thrd_yield.c',
		'src/thread/tls.c',
		'src/thread/tss_create.c',
		'src/thread/tss_delete.c',
		'src/thread/tss_set.c',
		'src/thread/vmlock.c',
		'src/time/__map_file.c',
		'src/time/__month_to_secs.c',
		'src/time/__secs_to_tm.c',
		'src/time/__tm_to_secs.c',
		'src/time/__tz.c',
		'src/time/__year_to_secs.c',
		'src/time/asctime.c',
		'src/time/asctime_r.c',
		'src/time/clock.c',
		'src/time/clock_getcpuclockid.c',
		'src/time/clock_getres.c',
		'src/time/clock_gettime.c',
		'src/time/clock_nanosleep.c',
		'src/time/clock_settime.c',
		'src/time/ctime.c',
		'src/time/ctime_r.c',
		'src/time/difftime.c',
		'src/time/ftime.c',
		'src/time/getdate.c',
		'src/time/gettimeofday.c',
		'src/time/gmtime.c',
		'src/time/gmtime_r.c',
		'src/time/localtime.c',
		'src/time/localtime_r.c',
		'src/time/mktime.c',
		'src/time/nanosleep.c',
		'src/time/strftime.c',
		'src/time/strptime.c',
		'src/time/time.c',
		'src/time/timegm.c',
		'src/time/timer_create.c',
		'src/time/timer_delete.c',
		'src/time/timer_getoverrun.c',
		'src/time/timer_gettime.c',
		'src/time/timer_settime.c',
		'src/time/times.c',
		'src/time/timespec_get.c',
		'src/time/utime.c',
		'src/time/wcsftime.c',
		'src/unistd/_exit.c',
		'src/unistd/access.c',
		'src/unistd/acct.c',
		'src/unistd/alarm.c',
		'src/unistd/chdir.c',
		'src/unistd/chown.c',
		'src/unistd/close.c',
		'src/unistd/ctermid.c',
		'src/unistd/dup.c',
		'src/unistd/dup2.c',
		'src/unistd/dup3.c',
		'src/unistd/faccessat.c',
		'src/unistd/fchdir.c',
		'src/unistd/fchown.c',
		'src/unistd/fchownat.c',
		'src/unistd/fdatasync.c',
		'src/unistd/fsync.c',
		'src/unistd/ftruncate.c',
		'src/unistd/getcwd.c',
		'src/unistd/getegid.c',
		'src/unistd/geteuid.c',
		'src/unistd/getgid.c',
		'src/unistd/getgroups.c',
		'src/unistd/gethostname.c',
		'src/unistd/getlogin.c',
		'src/unistd/getlogin_r.c',
		'src/unistd/getpgid.c',
		'src/unistd/getpgrp.c',
		'src/unistd/getpid.c',
		'src/unistd/getppid.c',
		'src/unistd/getsid.c',
		'src/unistd/getuid.c',
		'src/unistd/isatty.c',
		'src/unistd/lchown.c',
		'src/unistd/link.c',
		'src/unistd/linkat.c',
		'src/unistd/lseek.c',
		'src/unistd/nice.c',
		'src/unistd/pause.c',
		'src/unistd/pipe.c',
		'src/unistd/pipe2.c',
		'src/unistd/posix_close.c',
		'src/unistd/pread.c',
		'src/unistd/preadv.c',
		'src/unistd/pwrite.c',
		'src/unistd/pwritev.c',
		'src/unistd/read.c',
		'src/unistd/readlink.c',
		'src/unistd/readlinkat.c',
		'src/unistd/readv.c',
		'src/unistd/renameat.c',
		'src/unistd/rmdir.c',
		'src/unistd/setegid.c',
		'src/unistd/seteuid.c',
		'src/unistd/setgid.c',
		'src/unistd/setpgid.c',
		'src/unistd/setpgrp.c',
		'src/unistd/setregid.c',
		'src/unistd/setresgid.c',
		'src/unistd/setresuid.c',
		'src/unistd/setreuid.c',
		'src/unistd/setsid.c',
		'src/unistd/setuid.c',
		'src/unistd/setxid.c',
		'src/unistd/sleep.c',
		'src/unistd/symlink.c',
		'src/unistd/symlinkat.c',
		'src/unistd/sync.c',
		'src/unistd/tcgetpgrp.c',
		'src/unistd/tcsetpgrp.c',
		'src/unistd/truncate.c',
		'src/unistd/ttyname.c',
		'src/unistd/ttyname_r.c',
		'src/unistd/ualarm.c',
		'src/unistd/unlink.c',
		'src/unistd/unlinkat.c',
		'src/unistd/usleep.c',
		'src/unistd/write.c',
		'src/unistd/writev.c',
		'src/malloc/mallocng/aligned_alloc.c',
		'src/malloc/mallocng/donate.c',
		'src/malloc/mallocng/free.c',
		'src/malloc/mallocng/malloc.c',
		'src/malloc/mallocng/malloc_usable_size.c',
		'src/malloc/mallocng/realloc.c',
	},
	hdrs={
		-- <cd src/include && printf "\t\t'%s',\n" *.h */*.h
		'aio.h',
		'alloca.h',
		'ar.h',
		'assert.h',
		'byteswap.h',
		'complex.h',
		'cpio.h',
		'crypt.h',
		'ctype.h',
		'dirent.h',
		'dlfcn.h',
		'elf.h',
		'endian.h',
		'err.h',
		'errno.h',
		'fcntl.h',
		'features.h',
		'fenv.h',
		'float.h',
		'fmtmsg.h',
		'fnmatch.h',
		'ftw.h',
		'getopt.h',
		'glob.h',
		'grp.h',
		'iconv.h',
		'ifaddrs.h',
		'inttypes.h',
		'iso646.h',
		'langinfo.h',
		'lastlog.h',
		'libgen.h',
		'libintl.h',
		'limits.h',
		'link.h',
		'locale.h',
		'malloc.h',
		'math.h',
		'memory.h',
		'mntent.h',
		'monetary.h',
		'mqueue.h',
		'netdb.h',
		'nl_types.h',
		'paths.h',
		'poll.h',
		'pthread.h',
		'pty.h',
		'pwd.h',
		'regex.h',
		'resolv.h',
		'sched.h',
		'search.h',
		'semaphore.h',
		'setjmp.h',
		'shadow.h',
		'signal.h',
		'spawn.h',
		'stdalign.h',
		'stdarg.h',
		'stdbool.h',
		'stdc-predef.h',
		'stddef.h',
		'stdint.h',
		'stdio.h',
		'stdio_ext.h',
		'stdlib.h',
		'stdnoreturn.h',
		'string.h',
		'strings.h',
		'stropts.h',
		'syscall.h',
		'sysexits.h',
		'syslog.h',
		'tar.h',
		'termios.h',
		'tgmath.h',
		'threads.h',
		'time.h',
		'uchar.h',
		'ucontext.h',
		'ulimit.h',
		'unistd.h',
		'utime.h',
		'utmp.h',
		'utmpx.h',
		'values.h',
		'wait.h',
		'wchar.h',
		'wctype.h',
		'wordexp.h',
		'arpa/ftp.h',
		'arpa/inet.h',
		'arpa/nameser.h',
		'arpa/nameser_compat.h',
		'arpa/telnet.h',
		'arpa/tftp.h',
		'net/ethernet.h',
		'net/if.h',
		'net/if_arp.h',
		'net/route.h',
		'netinet/ether.h',
		'netinet/icmp6.h',
		'netinet/if_ether.h',
		'netinet/igmp.h',
		'netinet/in.h',
		'netinet/in_systm.h',
		'netinet/ip.h',
		'netinet/ip6.h',
		'netinet/ip_icmp.h',
		'netinet/tcp.h',
		'netinet/udp.h',
		'netpacket/packet.h',
		'scsi/scsi.h',
		'scsi/scsi_ioctl.h',
		'scsi/sg.h',
		'sys/acct.h',
		'sys/auxv.h',
		'sys/cachectl.h',
		'sys/dir.h',
		'sys/epoll.h',
		'sys/errno.h',
		'sys/eventfd.h',
		'sys/fanotify.h',
		'sys/fcntl.h',
		'sys/file.h',
		'sys/fsuid.h',
		'sys/inotify.h',
		'sys/io.h',
		'sys/ioctl.h',
		'sys/ipc.h',
		'sys/kd.h',
		'sys/klog.h',
		'sys/membarrier.h',
		'sys/mman.h',
		'sys/mount.h',
		'sys/msg.h',
		'sys/mtio.h',
		'sys/param.h',
		'sys/personality.h',
		'sys/poll.h',
		'sys/prctl.h',
		'sys/procfs.h',
		'sys/ptrace.h',
		'sys/quota.h',
		'sys/random.h',
		'sys/reboot.h',
		'sys/reg.h',
		'sys/resource.h',
		'sys/select.h',
		'sys/sem.h',
		'sys/sendfile.h',
		'sys/shm.h',
		'sys/signal.h',
		'sys/signalfd.h',
		'sys/socket.h',
		'sys/soundcard.h',
		'sys/stat.h',
		'sys/statfs.h',
		'sys/statvfs.h',
		'sys/stropts.h',
		'sys/swap.h',
		'sys/syscall.h',
		'sys/sysinfo.h',
		'sys/syslog.h',
		'sys/sysmacros.h',
		'sys/termios.h',
		'sys/time.h',
		'sys/timeb.h',
		'sys/timerfd.h',
		'sys/times.h',
		'sys/timex.h',
		'sys/ttydefaults.h',
		'sys/types.h',
		'sys/ucontext.h',
		'sys/uio.h',
		'sys/un.h',
		'sys/user.h',
		'sys/utsname.h',
		'sys/vfs.h',
		'sys/vt.h',
		'sys/wait.h',
		'sys/xattr.h',
	},
	bits={
		-- <cd src/arch/generic/bits && printf "\t\t'%s',\n" *.h
		'dirent.h',
		'errno.h',
		'fcntl.h',
		'fenv.h',
		'hwcap.h',
		'io.h',
		'ioctl.h',
		'ioctl_fix.h',
		'ipc.h',
		'ipcstat.h',
		'kd.h',
		'limits.h',
		'link.h',
		'mman.h',
		'msg.h',
		'poll.h',
		'ptrace.h',
		'resource.h',
		'sem.h',
		'shm.h',
		'socket.h',
		'soundcard.h',
		'statfs.h',
		'termios.h',
		'vt.h',
	},
}
