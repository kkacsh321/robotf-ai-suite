## LocalAI Docker Compose Commands

localai-up: ## Start LocalAI in the background
	docker compose -f ./LocalAI/localai-compose.yaml up -d

.PHONY: localai-up

localai-down: ## Stop the LocalAI
	docker compose -f ./LocalAI/localai-compose.yaml down

.PHONY: localai-down

localai-restart: ## Restart LocalAI container
	docker compose -f ./LocalAI/localai-compose.yaml restart

.PHONY: localai-restart

localai-exec: ## Exec into the LocalAI container
	docker exec -it localai /bin/bash

.PHONY: localai-exec

localai-logs: ## Get logs from LocalAI container
	docker logs localai

.PHONY: localai-logs

## ComfyUI Docker Compose Commands

comfyui-up: ## Start ComfyUI in the background
	docker compose -f ./ComfyUI/comfyui-compose.yaml up -d

.PHONY: comfyui-up

comfyui-down: ## Stop the ComfyUI stack
	docker compose -f ./ComfyUI/comfyui-compose.yaml down

.PHONY: comfyui-down

comfyui-restart: ## Restart ComfyUI container
	docker compose -f ./ComfyUI/comfyui-compose.yaml restart

.PHONY: comfyui-restart

comfyui-exec: ## Exec into the ComfyUI container
	docker exec -it comfyui /bin/bash

.PHONY: comfyui-exec

comfyui-logs: ## Get logs from ComfyUI container
	docker logs comfyui

.PHONY: comfyui-logs

## Open-WebUI Docker Compose Commands

openwebui-up: localai-up ## Start Open-WebUI in the background
	docker compose -f ./Open-WebUI/openwebui-compose.yaml up -d

.PHONY: openwebui-up

openwebui-down: ## Stop the Open-WebUI stack
	docker compose -f ./Open-WebUI/openwebui-compose.yaml down

.PHONY: openwebui-down

openwebui-restart: ## Restart Open-WebUI container
	docker compose -f ./Open-WebUI/openwebui-compose.yaml restart

.PHONY: openwebui-restart

openwebui-exec: ## Exec into the Open-WebUI container
	docker exec -it openwebui /bin/bash

.PHONY: openwebui-exec

openwebui-logs: ## Get logs from Open-WebUI container
	docker logs openwebui

.PHONY: openwebui-logs


## Flowise Docker Compose Commands

flowise-up: localai-up postgres-up ## Start Flowise in the background
	docker compose -f ./Flowise/flowise-compose.yaml up -d

.PHONY: flowise-up

flowise-down: ## Stop the Flowise stack
	docker compose -f ./Flowise/flowise-compose.yaml down

.PHONY: flowise-down

flowise-restart: ## Restart Flowise container
	docker compose -f ./Flowise/flowise-compose.yaml restart

.PHONY: flowise-restart

flowise-exec: ## Exec into the Flowise container
	docker exec -it flowise /bin/bash

.PHONY: flowise-exec

flowise-logs: ## Get logs from Flowise container
	docker logs flowise

.PHONY: flowise-logs

## Postgres Docker Compose Commands

postgres-up: ## Start Postgres in the background
	docker compose -f ./Postgres/postgres-compose.yaml up -d

.PHONY: postgres-up

postgres-down: ## Stop the Postgres stack
	docker compose -f ./Postgres/postgres-compose.yaml down

.PHONY: postgres-down

postgres-restart: ## Restart Postgres container
	docker compose -f ./Postgres/postgres-compose.yaml restart

.PHONY: postgres-restart

postgres-exec: ## Exec into the Postgres container
	docker exec -it postgres /bin/bash

.PHONY: postgres-exec

postgres-logs: ## Get logs from Postgres container
	docker logs postgres

.PHONY: postgres-logs

## N8N Docker Compose Commands

n8n-up: localai-up postgres-up ## Start n8n in the background
	docker compose -f ./n8n/n8n-compose.yaml up -d

.PHONY: n8n-up

n8n-down: ## Stop the n8n stack
	docker compose -f ./n8n/n8n-compose.yaml down

.PHONY: n8n-down

n8n-restart: ## Restart n8n container
	docker compose -f ./n8n/n8n-compose.yaml restart

.PHONY: n8n-restart

n8n-exec: ## Exec into the n8n container
	docker exec -it n8n /bin/bash

.PHONY: n8n-exec

n8n-logs: ## Get logs from n8n container
	docker logs n8n

.PHONY: n8n-logs

## Chroma Docker Compose Commands

chroma-up: localai-up ## Start ChromaDB in the background
	docker compose -f ./ChromaDB/chromadb-compose.yaml up -d

.PHONY: chroma-up

chroma-down: ## Stop the ChromaDB stack
	docker compose -f ./ChromaDB/chromadb-compose.yaml down

.PHONY: chroma-down

chroma-restart: ## Restart ChromaDB container
	docker compose -f ./ChromaDB/chromadb-compose.yaml restart

.PHONY: chroma-restart

chroma-exec: ## Exec into the ChromaDB container
	docker exec -it chromadb /bin/bash

.PHONY: chroma-exec

chroma-logs: ## Get logs from ChromaDB container
	docker logs chromadb

.PHONY: chroma-logs

## Unstructured API Docker Compose Commands

unstructured-up: localai-up ## Start Unstructured-API in the background
	docker compose -f ./Unstructured-API/unstructuredapi-compose.yaml up -d

.PHONY: unstructured-up

unstructured-down: ## Stop the Unstructured-API stack
	docker compose -f ./Unstructured-API/unstructuredapi-compose.yaml down

.PHONY: unstructured-down

unstructured-restart: ## Restart Unstructured-API container
	docker compose -f ./Unstructured-API/unstructuredapi-compose.yaml restart

.PHONY: unstructured-restart

unstructured-exec: ## Exec into the Unstructured-API container
	docker exec -it unstructuredapi /bin/bash

.PHONY: unstructured-exec

unstructured-logs: ## Get logs from Unstructured-API container
	docker logs unstructuredapi

.PHONY: unstructured-logs

## RoboTF-LLM-Tools Docker Compose Commands

llm-tools-up: localai-up ## Start RoboTF LLM Tools in the background
	docker compose -f ./RoboTF-LLM-Tools/robotf-llm-tools-compose.yaml up -d

.PHONY: llm-tools-up

llm-tools-down: ## Stop the RoboTF LLM Tools stack
	docker compose -f ./RoboTF-LLM-Tools/robotf-llm-tools-compose.yaml down

.PHONY: llm-tools-down

llm-tools-restart: ## Restart RoboTF LLM Tools container
	docker compose -f ./RoboTF-LLM-Tools/robotf-llm-tools-compose.yaml restart

.PHONY: llm-tools-restart

llm-tools-exec: ## Exec into the RoboTF LLM Tools container
	docker exec -it robotf-llm-tools /bin/bash

.PHONY: llm-tools-exec

llm-tools-logs: ## Get logs from RoboTF LLM Tools container
	docker logs robotf-llm-tools

.PHONY: llm-tools-logs
 
all-up: localai-up postgres-up chroma-up unstructured-up flowise-up n8n-up openwebui-up comfyui-up llm-tools-up## Turns on all stacks

.PHONY: all-up

all-down: flowise-down n8n-down openwebui-down comfyui-down unstructured-down chroma-down postgres-down llm-tools-down localai-down ## Turns off all stacks

.PHONY: all-down

help: ## show this usage
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
.PHONY: help