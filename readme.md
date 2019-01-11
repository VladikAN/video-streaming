Simple HTTP video streaming for testing purposes. Stream is working on top of cvlc (basically vlc but for console) player.

Original Big Buck Bunny video streaming on port 8090.

Use following command line to start:
```
docker run --rm -p 8090:8090 vladikan/video-stream:latest
```

You can use VLC player on host machine to view this stream on http://localhost:8090/.
