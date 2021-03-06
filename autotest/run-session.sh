#!/bin/csh
# C-shell script used to run micro Mathematics in all configured emulators

echo Configured emulators:
/work/adt-eclipse/sdk/tools/emulator -list-avds

echo APK to be tested: ${1}

./run-emulator.sh android_4.0.3 ${1}
./run-emulator.sh android_4.1.2 ${1}
./run-emulator.sh android_4.2.2 ${1}
./run-emulator.sh android_4.3.1 ${1}
./run-emulator.sh android_4.4.2 ${1}
./run-emulator.sh android_5.0.1 ${1}
./run-emulator.sh android_5.1.1 ${1}
./run-emulator.sh android_6.0.0 ${1} -g
./run-emulator.sh android_7.0.0 ${1} -g

firefox *.html

exit 1
