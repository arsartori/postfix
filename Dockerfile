FROM alpine:3.16
LABEL maintainer="Andre Sartori <dev@aphtec.com.br>"
RUN apk add --no-cache postfix
ADD start_postfix.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start_postfix.sh
EXPOSE 25
CMD ["start_postfix.sh"]
