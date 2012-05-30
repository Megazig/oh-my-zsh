alias ppcobjdump="powerpc-eabi-objdump -z -D -b binary -EB -m powerpc"
alias ppcobjdump-adjusted="powerpc-eabi-objdump -D -b binary -EB -m powerpc --adjust-vma=0x80001800"
export WIIDEV=/home/megazig/Wii/bootmii-utils
export DEVKITPRO=/home/megazig/devkitpro
export DEVKITPPC=$DEVKITPRO/devkitPPC
export DEVKITARM=$DEVKITPRO/devkitARM
PATH=$PATH:$DEVKITPPC/bin:$DEVKITPRO/wiiload/lin32
PATH=$PATH:$DEVKITARM/bin

#export WIILOAD=tcp:192.168.0.150
#export WIILOAD=tcp:192.168.0.108
export WIILOAD=/dev/ttyUSB0

alias setup_tty="sudo chown megazig /dev/ttyUSB0 && sudo chgrp megazig /dev/ttyUSB0"

alias bootmii="/home/megazig/Wii/bootmii-utils/client/bootmii"

alias do_u8it="/home/megazig/Wii/u8it/u8it"

alias portlib_config="CPPFLAGS=-I$DEVKITPRO/portlibs/ppc/include LDFLAGS=-L$DEVKITPRO/portlibs/lib ./configure --disable-shared --enable-static --host=powerpc-eabi --prefix=$DEVKITPRO/portlibs/ppc"
