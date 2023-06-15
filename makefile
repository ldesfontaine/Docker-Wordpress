.PHONY: prod start stop

prod:
	@if [ ! -d "/etc/letsencrypt/live/$(NGINX_DOMAIN)" ]; then \
		docker run -it --rm \
		-v "/etc/letsencrypt:/etc/letsencrypt" \
		-v "/var/www/html:/var/www/html" \
		-e "DOMAIN=$(NGINX_DOMAIN)" \
		-e "EMAIL=$(EMAIL)" \
		certbot/certbot certonly --webroot -w /var/www/html -d $(NGINX_DOMAIN) --agree-tos --email $(EMAIL) --no-eff-email; \
	fi
	docker-compose up -d

start:
	docker-compose up

stop:
	docker-compose down
