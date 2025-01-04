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

help: ## show this usage
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
.PHONY: help