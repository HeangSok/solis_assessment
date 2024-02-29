.DEFAULT_GOAL := help

.PHONY: help add-vault-profile fmt init plan apply destroy

# Help command to list available commands and their descriptions
help: ## Display help information
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# ==== Set default Variables ====
# Set default values for variables. These can be overridden by exporting or specifying at command invocation.
INPUT := false
LOCK := false
PROFILE ?= # Profile for aws-vault, ensure this is provided
CONFIG_FILE ?= # Configuration file for Terraform backend
VARS_FILE ?= # Variable file for Terraform

# ==== Customise Commands ====

# Validate CONFIG_FILE is not empty
validate-config-file:
	@if [ -z "$(CONFIG_FILE)" ]; then echo "CONFIG_FILE variable is not set."; exit 1; fi

# Validate VARS_FILE is not empty
validate-vars-file: # Corrected indentation
	@if [ -z "$(VARS_FILE)" ]; then echo "VARS_FILE variable is not set."; exit 1; fi

fmt: ## Prettify terraform files
	@terraform fmt -recursive

init: validate-config-file ## Initialize Terraform configuration
	@terraform init -input=$(INPUT) -reconfigure --backend-config=$(CONFIG_FILE)

plan: validate-vars-file ## Plan Terraform changes
	@terraform plan -lock=$(LOCK) -input=$(INPUT) -var-file=$(VARS_FILE)

apply: validate-vars-file ## Apply Terraform changes
	@terraform apply -lock=$(LOCK) -input=$(INPUT) -var-file=$(VARS_FILE)

destroy: validate-vars-file ## Destroy Terraform managed infrastructure
	@terraform destroy -lock=$(LOCK) -input=$(INPUT) -var-file=$(VARS_FILE)