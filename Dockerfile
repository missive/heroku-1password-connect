FROM heroku/heroku:22 AS production

COPY --from=1password/connect-sync /bin/connect-sync /bin/connect-sync
COPY --from=1password/connect-api /bin/connect-api /bin/connect-api

RUN chmod +x /bin/connect-sync /bin/connect-api
RUN mkdir -p /app/.op/data && chmod -R 700 /app/.op

COPY ./bin/web /bin/web

CMD ["/bin/web"]
