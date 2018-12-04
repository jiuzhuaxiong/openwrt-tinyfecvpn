# OpenWrt [tinyfecVPN](https://github.com/wangyu-/tinyfecVPN)

Why this exists
---
Yes he releases [pre-compiled binaries](https://github.com/wangyu-/tinyfecVPN/releases), but they're statically-linked, which means libraries such as C/C++ standard library are integrated into the binaries, increasing their size. So I wrote this Makefile to create dynamically-linked binaries for OpenWrt, which significantly reduced the size making it **tiny** enough to fit in embedded devices.

Size comparison
---
MIPS 24Kc, 5.11MiB (statically-linked) vs 169KiB (dynamically-linked)
