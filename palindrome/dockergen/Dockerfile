FROM jwilder/docker-gen
COPY haproxy.tmpl /etc/docker-gen/templates/haproxy.tmpl
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN apk add bash bash-doc bash-completion
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/run.sh"]