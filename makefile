.PHONY: prod start stop

#prod:
#	docker-compose run --rm certbot certonly --webroot -w /var/www/html -d $(NGINX_DOMAIN) -m $(EMAIL) --agree-tos --no-eff-email
#	docker-compose up -d

start:
	docker-compose up

stop:
	docker-compose down
