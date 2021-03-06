# adb-event-record
adb-event-record is a tool to record sensor's events like touch event and so on using the ADB (Android Debug Bridge).

During Android development you often want to record or reproduce some issues or testing steps. 

This script solves that problem by recording device's events like touch event, input event, and etc. Thus, you can use this script to play the recorded events back to do the repeated steps atuomatically. 

### Setup
 
* You need to enable USB debugging mode.
* Make sure your `adb` can work
* Clone this project
```
git clone https://github.com/tzutalin/adb-event-record.git
```

### Usage

* Show all events on your device

```
./adbrecord.py --show
```

![](demo/demo.png)

* Record

Store the event to record.log and record the /dev/input/event4 only
```
./adbrecord.py -r record.log -n 4

n=4 is my touch input event
```

Store all of the events to record.log
```
./adbrecord.py -r record.log
```

* Playback

Repeat to play the record events
```
./adbrecord.py -p record.log --repeat
```

Play the record events without repeating
```
./adbrecord.py -p record.log
```

Go to com.tzutalin.test.main Activity, and play the record events without repeating
```
./adbrecord.py -p record.log --activity com.tzutalin.test.main
```
