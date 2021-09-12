.PHONY: init stack/create stack/list stack/delete
.DEFAULT_GOAL := help

NAMESPACE := tomdewildt
NAME := data-engineering

help: ## Show this help
	@echo "${NAMESPACE}/${NAME}"
	@echo
	@fgrep -h "##" $(MAKEFILE_LIST) | \
	fgrep -v fgrep | sed -e 's/## */##/' | column -t -s##

##

stack/create: ## Create stack
	gcloud deployment-manager deployments create $(name) --config $(file)

stack/list: ## List stacks
	gcloud deployment-manager deployments list

stack/delete: ## Delete stack
	gcloud deployment-manager deployments delete $(name)
