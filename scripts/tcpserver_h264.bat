:: This will create a tcp server sink on localhost:PORT. The server will sink H264 
:: encoded frames and transmit via tcp when a client connects. In this example a web
:: cam source is used, which was discovered using gst-device-monitor-1.0
gst-launch-1.0 -v mfvideosrc device-path="\\\\\?\\usb\#vid_05a3\&pid_9331\&mi_00\#8\&7c239da\&0\&0000\#\{e5323777-f976-4f5b-9b55-b94699c46e44\}\\global" ! queue ! videoconvert ! x264enc ! h264parse ! queue ! matroskamux ! queue leaky=2 ! tcpserversink port=7001 host=0.0.0.0 recover-policy=keyframe sync-method=latest-keyframe