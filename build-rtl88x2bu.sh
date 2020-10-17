sudo apt-get install bc raspberrypi-kernel-headers

git clone https://github.com/cilynx/rtl88x2bu.git
cd rtl88x2bu

sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/g' Makefile
sed -i 's/CONFIG_PLATFORM_ARM_RPI = n/CONFIG_PLATFORM_ARM_RPI = y/g' Makefile

make -j4

sudo make install

cd ..