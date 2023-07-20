echo "Decoding config..."

echo $PROM_CONFIG > encoded.b64

base64 -d encoded.b64 > /etc/prometheus/prometheus.yml

cat /etc/prometheus/prometheus.yml

echo "Starting prometheus..."

/bin/prometheus --web.listen-address="0.0.0.0:$PROM_PORT" --web.enable-lifecycle --config.file=/etc/prometheus/prometheus.yml
