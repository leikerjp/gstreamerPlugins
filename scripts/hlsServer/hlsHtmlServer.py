# Utility script
#  EQUIVALENT: $py -m http.server 8080 (from the command line.)
import http.server
import socketserver

PORT = 8080

Handler = http.server.SimpleHTTPRequestHandler

print("Launching HTTP Server")
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print("serving at port", PORT)
    httpd.serve_forever()