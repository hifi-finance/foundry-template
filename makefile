install::
	@git submodule update --init --recursive

build:: install
	@forge build

clean:: install
	@forge clean

coverage:: install
	@forge coverage

fmt-check:: install
	@forge fmt --check

fmt-write:: install
	@forge fmt

gas-report:: install
	@forge test --gas-report

test:: install
	@forge test

update:: install
	@forge update
