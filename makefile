# Include .env file if it exists and export its env vars.
-include .env

# Set the default goal to setup.
.DEFAULT_GOAL := setup

# Prepare the local development environment.
setup::
	@sh .shell/setup.sh

# Run Foundry scripts.
#
# Prerequisites:
# - [Foundry](https://getfoundry.sh)
build::
	@forge build

clean::
	@forge clean

coverage::
	@forge coverage

deploy::
	@forge script scripts/Foo.s.sol --broadcast --fork-url http://localhost:8545

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
