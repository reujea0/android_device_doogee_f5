#!/bin/bash
cd ../../../..
cd frameworks/opt/telephony
git apply -v ../../../device/doogee/f5/patches/framework_opt_telephony/0002_mobile_data_patch_mt6753.patch
cd ../../..
echo Patches Applied Successfully!
