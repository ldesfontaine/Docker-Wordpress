.PHONY: start stop

start:
ifeq ($(ENV),dev)
	docker-compose up -d
else
	docker-compose up
endif

stop:
	docker-compose down