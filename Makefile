#===============================================================================
# utils
#===============================================================================
include .env

.PHONY: webapp
webapp:
	open http://localhost:$(WEBAPP_PORT)
#===============================================================================

#===============================================================================
# docker compose
#===============================================================================
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
	docker compose ps

.PHONY: logs
logs:
	docker compose logs

.PHONY: logsf
logsf:
	docker compose logs -f
#===============================================================================