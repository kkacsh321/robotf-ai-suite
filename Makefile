## LocalAI Docker Compose Commands

localai-up: ## Start LocalAI in the background
	docker-compose -f ./LocalAI/localai-compose.yaml up -d

.PHONY: localai-up

localai-down: ## Stop the LocalAI
	docker-compose -f ./LocalAI/localai-compose.yaml down

.PHONY: localai-down

localai-restart: ## Restart LocalAI container
	docker-compose -f ./LocalAI/localai-compose.yaml restart

.PHONY: localai-restart

localai-exec: ## Exec into the LocalAI container
	docker exec -it localai /bin/bash

.PHONY: localai-exec

localai-logs: ## Get logs from LocalAI container
	docker logs localai

.PHONY: localai-logs

## ComfyUI Docker Compose Commands

comfyui-up: ## Start ComfyUI in the background
	docker-compose -f ./ComfyUI/comfyui-compose.yaml up -d

.PHONY: comfyui-up

comfyui-down: ## Stop the ComfyUI stack
	docker-compose -f ./ComfyUI/comfyui-compose.yaml down

.PHONY: comfyui-down

comfyui-restart: ## Restart ComfyUI container
	docker-compose -f ./ComfyUI/comfyui-compose.yaml restart

.PHONY: comfyui-restart

comfyui-exec: ## Exec into the ComfyUI container
	docker exec -it comfyui /bin/bash

.PHONY: comfyui-exec

comfyui-logs: ## Get logs from ComfyUI container
	docker logs comfyui

.PHONY: comfyui-logs

## Open-WebUI Docker Compose Commands

openwebui-up: localai-up ## Start Open-WebUI in the background
	docker-compose -f ./Open-WebUI/openwebui-compose.yaml up -d

.PHONY: openwebui-up

openwebui-down: ## Stop the Open-WebUI stack
	docker-compose -f ./Open-WebUI/openwebui-compose.yaml down

.PHONY: openwebui-down

openwebui-restart: ## Restart Open-WebUI container
	docker-compose -f ./Open-WebUI/openwebui-compose.yaml restart

.PHONY: openwebui-restart

openwebui-exec: ## Exec into the Open-WebUI container
	docker exec -it openwebui /bin/bash

.PHONY: openwebui-exec

openwebui-logs: ## Get logs from Open-WebUI container
	docker logs openwebui

.PHONY: openwebui-logs


## Flowise Docker Compose Commands

flowise-up: localai-up postgres-up ## Start Flowise in the background
	docker-compose -f ./Flowise/flowise-compose.yaml up -d

.PHONY: flowise-up

flowise-down: ## Stop the Flowise stack
	docker-compose -f ./Flowise/flowise-compose.yaml down

.PHONY: flowise-down

flowise-restart: ## Restart Flowise container
	docker-compose -f ./Flowise/flowise-compose.yaml restart

.PHONY: flowise-restart

flowise-exec: ## Exec into the Flowise container
	docker exec -it flowise /bin/bash

.PHONY: flowise-exec

flowise-logs: ## Get logs from Flowise container
	docker logs flowise

.PHONY: flowise-logs

## Postgres Docker Compose Commands

postgres-up: ## Start Postgres in the background
	docker-compose -f ./Postgres/postgres-compose.yaml up -d

.PHONY: postgres-up

postgres-down: ## Stop the Postgres stack
	docker-compose -f ./Postgres/postgres-compose.yaml down

.PHONY: postgres-down

postgres-restart: ## Restart Postgres container
	docker-compose -f ./Postgres/postgres-compose.yaml restart

.PHONY: postgres-restart

postgres-exec: ## Exec into the Postgres container
	docker exec -it postgres /bin/bash

.PHONY: postgres-exec

postgres-logs: ## Get logs from Postgres container
	docker logs postgres

.PHONY: postgres-logs

help: ## show this usage
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
.PHONY: help