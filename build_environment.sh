# Created by rharshit
echo 'Starting setup process'
echo ''
echo 'Updating...'
apt-get update
echo ''
echo 'Installing other required stuff' #Google repos, gits, and all necessary building stuff. It is donr in parts, in case something goes wrong
echo ''
echo 'Part 1'
apt-get install git gnupg flex bison gperf build-essential -y
echo 'Part 2'
apt-get install zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev -y
echo 'Part 3'
apt-get install libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 -y
echo 'Part 4'
apt-get install libgl1-mesa-dev g++-multilib mingw32 tofrodos -y
echo 'Part 5'
apt-get install python-markdown libxml2-utils xsltproc zlib1g-dev:i386 -y
echo 'Linking libGL'
ln -s /usr/lib32/mesa/libGL.so.1 /usr/lib32/mesa/libGL.so
echo 'Getting your identity...'
export USER=$(whoami | sed 's/\\/\\\\/')
echo "Your identity is" $USER
echo 'Configuring USB Access using your identity...' #Don't need to update /etc/udev/rules.d/51-android.rules manually
echo ''
echo '# adb protocol on passion (Nexus One)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4e12", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# fastboot protocol on passion (Nexus One)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0bb4", ATTR{idProduct}=="0fff", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# adb protocol on crespo/crespo4g (Nexus S)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4e22", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# fastboot protocol on crespo/crespo4g (Nexus S)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4e20", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# adb protocol on stingray/wingray (Xoom)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="22b8", ATTR{idProduct}=="70a9", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# fastboot protocol on stingray/wingray (Xoom)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="708c", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# adb protocol on maguro/toro (Galaxy Nexus)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", ATTR{idProduct}=="6860", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# fastboot protocol on maguro/toro (Galaxy Nexus)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4e30", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# adb protocol on panda (PandaBoard)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0451", ATTR{idProduct}=="d101", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# adb protocol on panda (PandaBoard ES)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="d002", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# fastboot protocol on panda (PandaBoard)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0451", ATTR{idProduct}=="d022", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# usbboot protocol on panda (PandaBoard)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0451", ATTR{idProduct}=="d00f", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# usbboot protocol on panda (PandaBoard ES)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0451", ATTR{idProduct}=="d010", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# adb protocol on grouper/tilapia (Nexus 7)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4e42", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# fastboot protocol on grouper/tilapia (Nexus 7)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4e40", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# adb protocol on manta (Nexus 10)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4ee2", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo '# fastboot protocol on manta (Nexus 10)' >> /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", ATTR{idProduct}=="4ee0", MODE="0600", OWNER="'$USER'"' >> /etc/udev/rules.d/51-android.rules
echo 'Done!'
echo "Don't forget to press the Thanks button on thread located in"
echo 'http://forum.xda-developers.com/android/development/script-simplest-to-set-android-build-t2953816'
