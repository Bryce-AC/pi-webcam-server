# WebcamPiServer
Hi! This is a very simple http video server for Raspberry Pi using a C920 webcam.
It allows video and audio (from the webcam) over the network. 
I use this to stream footage to OBS.

I understand using shells isn't the best method of distribution, so feel free to just run 
```
pulseaudio --start
aplay -l
sleep 5
cvlc v4l2:///dev/video0:chroma=h264 :input-slave=alsa://hw:1,0 --sout '#transcode{acodec=mpga,a128,channels=2,samplerate=44100,threads=4,audio-sync=1}:standard{access=http,mux=ts,mime=video/ts,dst=:8099}'
```
at startup if you'd prefer.

I had problems getting the audio to initialise correctly, so I just started pulse and alsa (I think?) before starting the stream.

More info can be found in the [Instructable]() or the [YouTube Video](https://www.youtube.com/watch?v=34BEyuVkE_I)

Cheers,

Bryce. 
