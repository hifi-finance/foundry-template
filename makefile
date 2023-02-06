install::
	bash ./_/install.sh

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
