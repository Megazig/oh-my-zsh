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
#export WIILOAD=tcp:192.168.0.124
export WIILOAD=/dev/ttyUSB0

alias setup_tty="sudo chown megazig /dev/ttyUSB0 && sudo chgrp megazig /dev/ttyUSB0"

alias bootmii="/home/megazig/Wii/bootmii-utils/client/bootmii"

alias do_u8it="/home/megazig/Wii/u8it/u8it"

alias portlib_config="CPPFLAGS=-I$DEVKITPRO/portlibs/ppc/include LDFLAGS=-L$DEVKITPRO/portlibs/lib ./configure --disable-shared --enable-static --host=powerpc-eabi --prefix=$DEVKITPRO/portlibs/ppc"

ppcobjdump_adjusted_base() {
	powerpc-eabi-objdump -D -b binary -EB -m powerpc --adjust-vma=$2 $1
}

make_wii_bin() {
	powerpc-eabi-gcc -nostartfiles -nodefaultlibs -Wl,-Ttext,0x80001800 -o ch_patch.elf $1
	powerpc-eabi-strip --strip-debug --strip-all --discard-all -o ch_patchs.elf -F elf32-powerpc ch_patch.elf
	powerpc-eabi-objcopy -I elf32-powerpc -O binary ch_patchs.elf $2
	#raw2c ch_patch.bin
	rm ch_patch.elf
	rm ch_patchs.elf
}

make_wii_stub() {
	powerpc-eabi-gcc -nostartfiles -nodefaultlibs -Wl,-T$3 -Wl,--print-map -o ch_patch.elf $1
	powerpc-eabi-strip --strip-debug --strip-all --discard-all -o ch_patchs.elf -F elf32-powerpc ch_patch.elf
	powerpc-eabi-objcopy -I elf32-powerpc -O binary ch_patchs.elf $2
	#raw2c ch_patch.bin
	rm ch_patch.elf
	rm ch_patchs.elf
}

make_arm_bin() {
	arm-eabi-gcc -mbig-endian -nostartfiles -nodefaultlibs -Wl,-Ttext,0x10100000 -o ch_patch.elf $1
	arm-eabi-strip --strip-debug --strip-all --discard-all -o ch_patchs.elf -F elf32-bigarm ch_patch.elf
	arm-eabi-objcopy -I elf32-bigarm -O binary ch_patchs.elf $2
	#raw2c ch_patch.bin
	rm ch_patch.elf
	rm ch_patchs.elf
}

make_thumb_bin() {
	arm-eabi-gcc -mbig-endian -mthumb -nostartfiles -nodefaultlibs -Wl,-Ttext,0x10100000 -o ch_patch.elf $1
	arm-eabi-strip --strip-debug --strip-all --discard-all -o ch_patchs.elf -F elf32-bigarm ch_patch.elf
	arm-eabi-objcopy -I elf32-bigarm -O binary ch_patchs.elf $2
	#raw2c ch_patch.bin
	rm ch_patch.elf
	rm ch_patchs.elf
}
alias armobjdump="arm-eabi-objdump -z -D -b binary -EB -m arm"
alias thumbobjdump="arm-eabi-objdump -z -D -b binary -EB -m arm -M force-thumb"

disassemble_text() {
	echo $1 | xxd -r -p > _oh_moo; powerpc-eabi-objdump -EB -m powerpc -b binary -D _oh_moo; rm _oh_moo
}

show_modules() {
	for f in **/*.app; do; echo $f; strings $f | grep IOSVersion; xxd $f | grep "0000100:"; done
}
