:: This will connect to a tcpserversink at HOST:PORT. The expecation is that the serversink is transmitting
:: H264 encoded video. The video is then displayed to the screen.
gst-launch-1.0 -v tcpclientsrc host=192.168.0.117 port=7001 ! decodebin ! autovideosink