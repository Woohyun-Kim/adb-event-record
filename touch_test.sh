echo "> Touch Event test."
echo "> Waiting Touch Screen..."
adb shell getevent -l|grep POSITION_
