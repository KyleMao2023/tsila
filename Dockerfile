FROM debian:stable-slim

WORKDIR /TSILA

COPY tsila /TSILA

ADD tsila.sh /TSILA

RUN pwd && ls -l /

RUN mkdir data && chmod -R 777 /TSILA/data 

RUN chmod 777 /TSILA/tsila.sh

ENV PORT=5244 

ENV HOST=0.0.0.0
    
EXPOSE 5244

CMD /TSILA/tsila.sh
