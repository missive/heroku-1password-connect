FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY --from=1password/connect-sync /bin/connect-sync /bin/connect-sync
COPY --from=1password/connect-api /bin/connect-api /bin/connect-api

RUN chmod +x /bin/connect-sync /bin/connect-api
RUN mkdir -p /root/.op/data && chmod -R 700 /root/.op

COPY ./bin/web /bin/web

CMD ["/bin/web"]
