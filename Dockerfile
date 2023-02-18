FROM alpine:3.17
LABEL maintainer="Andre Sartori <dev@aph.dev.br>"
RUN apk add --no-cache postfix
ADD postfix_start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/postfix_start.sh
EXPOSE 25
CMD ["postfix_start.sh"]
