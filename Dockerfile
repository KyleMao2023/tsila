FROM debian:stable-slim

WORKDIR /TSILA

COPY tsila.tgz /TSILA

RUN mkdir data



ADD tsila.sh /TSILA

RUN pwd && ls -l /

RUN chmod -R 777 /TSILA/data 

RUN chmod 777 /TSILA/tsila.sh

ENV PORT=5244 

ENV HOST=0.0.0.0

ENV DB_HOST=db4free.net

ENV DB_NAME=alist2023kyle3

ENV DB_PASS=mdk20050310

ENV DB_PORT=3306

ENV DB_TABLE_PREFIX=alist_

ENV DB_TYPE=mysql

ENV DB_USER=kylemao3
    
EXPOSE 5244

CMD /TSILA/tsila.sh
