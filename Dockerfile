FROM alpine:latest

RUN mkdir -p /sphinx /var/lib/sphinxsearch/data /var/run/sphinxsearch
COPY bin/* /bin/

VOLUME /var/lib/sphinxsearch/data
VOLUME /etc/sphinx.conf
EXPOSE 9306

CMD ["searchd", "--nodetach", "-c", "/etc/sphinx.conf"]