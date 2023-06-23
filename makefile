.PHONY: start stop db-import db-export

start:
ifeq ($(ENV),dev)
	docker-compose up -d
else
	docker-compose up
endif

stop:
	docker-compose down

db-export:

db-import:
