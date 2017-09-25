echo "> Touch Event test."
echo "> Waiting for device..."
adb wait-for-devices
echo "> Waiting Touch Screen..."
adb shell getevent -l|grep POSITION_
