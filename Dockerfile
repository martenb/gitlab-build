FROM alpine:latest

RUN apk --no-cache add lftp ca-certificates openssh wget

RUN (echo "set ftp:ssl-allow true;\nset ssl:verify-certificate false;") > ~/.lftp/rc
