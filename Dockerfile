FROM alpine:20200122

WORKDIR /home/lab1

COPY ./za.sh /home/lab1

RUN chmod +x za.sh