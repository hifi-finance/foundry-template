# Include .env file if it exists and export its env vars
-include .env

install::
	@sh ./_/install.sh

build::
	@forge build

clean::
	@forge clean

coverage::
	@forge coverage

fmt-check::
	@forge fmt --check

fmt-write::
	@forge fmt

gas-report::
	@forge test --gas-report

test::
	@forge test

update::
	@forge update

watch::
	@forge test --watch contracts/
