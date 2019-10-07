FROM alpine:latest

RUN apk --no-cache add lftp ca-certificates openssh wget

RUN lftp -c "set ftp:ssl-allow true; set ssl:verify-certificate false;"
