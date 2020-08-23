.PHONY: init-dev-tools lint

init-dev-tools:
	tfenv install
	tfenv use
	pre-commit install

lint:
	pre-commit run --all-files