FROM nginx:1.13.0-alpine

ENV WORKING_DIRECTORY /opt/work
ENV HTML_ROOT /usr/share/nginx/html/
COPY scripts $WORKING_DIRECTORY

ENTRYPOINT sh $WORKING_DIRECTORY/download.sh

EXPOSE 80
