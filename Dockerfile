FROM ubuntu:latest

COPY --from=1password/connect-sync /bin/connect-sync /bin/connect-sync
COPY --from=1password/connect-api /bin/connect-api /bin/connect-api

RUN chmod +x /bin/connect-sync /bin/connect-api
RUN mkdir -p /root/.op/data && chmod -R 700 /root/.op

COPY ./bin/web /bin/web

CMD ["/bin/web"]
