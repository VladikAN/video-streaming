FROM alpine:3.7
WORKDIR /video
EXPOSE 8090

RUN apk add --no-cache curl vlc
RUN curl http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_60fps_normal.mp4 --output stream.mp4

RUN adduser -S stream
USER stream

# cvlc - vlc without interface
ENTRYPOINT ["cvlc", "stream.mp4", "--sout", "#transcode{vcodec=h264,vb=200,scale=Auto,acodec=mpga,ab=128,channels=2,samplerate=44100}:http{mux=ts,dst=:8090/}", ":sout-all", ":sout-keep", "--loop"]

