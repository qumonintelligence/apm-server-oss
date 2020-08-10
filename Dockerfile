FROM docker.elastic.co/apm/apm-server-oss:7.7.0
COPY apm-server.docker.yml /usr/share/apm-server/apm-server.yml
USER root
RUN chmod go-w apm-server /usr/share/apm-server/apm-server.yml
USER apm-server
EXPOSE 8200/tcp
