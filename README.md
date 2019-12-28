# WebcamPiServer
Hi! This is a very simple https video server for raspberry pi using a C920 webcam.
I use this to stream footage to OBS.

I understand using shells isn't the best method of distribution, so feel free to just run 
```
pulseaudio --start
aplay -l
sleep 5
cvlc v4l2:///dev/video0:chroma=h264 :input-slave=alsa://hw:1,0 --sout '#transcode{acodec=mpga,a128,channels=2,samplerate=44100,threads=4,audio-sync=1}:standard{access=http,mux=ts,mime=video/ts,dst=:8099}'
```
at startup

More info can be found in the [Instructable]() or the [YouTube Video](https://www.youtube.com/watch?v=34BEyuVkE_I)
