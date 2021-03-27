:: This will create a tcp server sink on localhost:PORT. The server will sink H264 
:: encoded frames and transmit via tcp when a client connects. In this example a videotestsrc 
:: built into GStreamer is used - the frame properties are set such that rawvideoparse can 
:: correctly decode the frames on the tcp client side.
gst-launch-1.0 -v videotestsrc ! video/x-raw,width=320,height=240,format=I420,framerate=25/1 ! videoconvert ! queue ! tcpserversink port=7001 host=0.0.0.0 recover-policy=keyframe sync-method=latest-keyframe