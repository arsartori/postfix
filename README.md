# Postfix

### Versões utilizadas
* Alpine 3.18
* Postfix 3.8.9

## Baixando a imagem
	docker pull arsartori/postfix:latest

## Variaveis
* `RELAYHOST` - Nome do servidor para relay ou em branco para atuar como gateway 
* `MYNETWORKS` - Redes ou hosts permitidos de enviar e-mail
* `MYHOSTNAME` - Nome do servidor

## Executando
	docker run -d --name postfix -p 25:25 \
		-e RELAYHOST=smtp.yourhostrelay.com \
		-e MYNETWORKS=127.0.0.0/8,192.168.1.0/24,192.168.2.0/24 \
		-e MYHOSTNAME=smtp.server.local postfix:latest

## Executado com Docker Compose
	docker compose up -d

## Para visualizar a fila de mensagens
	docker exec postfix postqueue -p

## Para ver a versão do Postfix rodando
	docker exec postfix postconf mail_version
