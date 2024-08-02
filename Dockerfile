FROM alpine:3.17
LABEL maintainer="Andre Sartori <andre@aph.dev.br>"
RUN apk add --no-cache postfix
ADD start_postfix.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start_postfix.sh
EXPOSE 25
CMD ["start_postfix.sh"]