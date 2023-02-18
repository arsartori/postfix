# docker-postfix
Simple Postfix docker image for SMTP relay/gateway

### Download container
```
docker pull arsartori/postfix
```

### How to run it

Set Variables  
* `RELAYHOST` - Server name for relay. If not specified act as gateway internet.  
* `MYNETWORKS` - Networks or host authorized to send e-mail.
* `MYHOSTNAME` - Server name
```
docker run -d --name postfix -p 25:25 \
	-e RELAYHOST=smtp.yourhostrelay.com \
	-e MYNETWORKS=127.0.0.0/8,192.168.1.0/24,192.168.2.0/24 \
	-e MYHOSTNAME=smtp.server.local \
	arsartori/postfix
```

