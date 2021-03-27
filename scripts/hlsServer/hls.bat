:: This will read video frames from a web cam (discovored via gst-device-monitor-1.0), tack on a clock overlay, ten encode to H264 and wrap in
:: MPEG-TS frames, and write 5 files to disk (like HLS expects). A playlist.m3u8 is also created, which is used by VLC media player or the HTML
:: to display the recorded video files.
:: Note: After launching this a separate HTTP server needs to run and pointed at the directory this is run in (so that it can find the files generated)
::	ex. py -m http.server 8080
gst-launch-1.0 mfvideosrc device-path="\\\\\?\\usb\#vid_05a3\&pid_9331\&mi_00\#8\&7c239da\&0\&0000\#\{e5323777-f976-4f5b-9b55-b94699c46e44\}\\global" ! videoconvert ! clockoverlay ! x264enc ! mpegtsmux ! hlssink max-files=5