:: This will connect to a tcpserversink at HOST:PORT. The expecation is that the serversink is transmitting
:: raw frames that are the default format for rawvideoparse. i.e. 320x240,I420,25fps
gst-launch-1.0 -v tcpclientsrc host=192.168.0.117 port=7001 ! rawvideoparse ! autovideosink