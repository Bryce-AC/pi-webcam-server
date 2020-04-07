raspivid -o - -n -t 0 -w 1920 -h 1080 -fps 30 | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8099}' :demux=h264 :h264-fps=30
