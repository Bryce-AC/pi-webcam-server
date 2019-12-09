
aplay -l
sleep 5
cvlc v4l2:///dev/video0:chroma=h264 :input-slave=alsa://hw:1,0 --sout '#transcode{acodec=mpga,a128,channels=2,samplerate=44100,threads=4,audio-sync=1}:standard{access=http,mux=ts,mime=video/ts,dst=:8099}'
