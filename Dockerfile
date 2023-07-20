FROM prom/prometheus:v2.43.0

COPY --chmod=0755 docker-entrypoint.sh /

ENTRYPOINT ["/usr/bin/env"]
CMD ["sh", "/docker-entrypoint.sh"]
