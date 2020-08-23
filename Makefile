.PHONY: init-dev-tools lint init plan apply

init-dev-tools:
	tfenv install
	tfenv use
	pre-commit install

init:
	terraform init	

plan: init
	terraform plan	

apply: plan
	terraform apply	

lint:
	pre-commit run --all-files