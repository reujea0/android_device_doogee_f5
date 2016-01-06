# android_device_doogee_f5
Doogee F5 CyanogenMod device tree development repository

Currently
* Recovery is buildable and works

To build, either use the provided vendor repository, or after blob extraction remove libtinycompress from the makefile, then copy it manually to $OUT/system/lib[64] (Respect the architectures!) before starting the build, or else it will fail.
