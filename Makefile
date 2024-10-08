#===============================================================================
# utils
#===============================================================================
include .env

.PHONY: webapp
webapp:
	open http://localhost:$(WEBAPP_PORT)

.PHONY: hasura
hasura:
	open http://localhost:$(HASURA_PORT)

.PHONY: unleash
unleash:
	open http://localhost:$(UNLEASH_PORT)

.PHONY: o2
o2:
	open http://localhost:$(O2_HTTP_PORT)
#===============================================================================

#===============================================================================
# docker compose
#===============================================================================
.PHONY: in
in:
	docker compose exec webapp bash

.PHONY: build
build:
	docker compose build --no-cache

.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

.PHONY: ps
ps:
	docker compose ps -a

.PHONY: logs
logs:
	docker compose logs

.PHONY: logsf
logsf:
	docker compose logs -f
#===============================================================================