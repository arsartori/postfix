#!/bin/sh
echo "Starting Postfix Mail Relay"
postconf -e relayhost=${RELAYHOST}
postconf -e mynetworks=${MYNETWORKS}
postconf -e myhostname=${MYHOSTNAME}
postconf -e maillog_file=/dev/stdout
exec /usr/sbin/postfix start-fg
