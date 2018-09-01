#bin/sh
if [ "$1" = '-tls' ]; then
  curl -v -k "https://localhost:8080"
else
  curl "http://localhost:8080"
fi
