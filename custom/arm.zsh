compile_arm() {
#	clang -march=armv7-a -ccc-host-triple arm-elf -ccc-gcc-name arm-elf-gcc hello.c
	clang -march=armv7-a -ccc-host-triple arm-elf -ccc-gcc-name arm-eabi-gcc hello.c
}

