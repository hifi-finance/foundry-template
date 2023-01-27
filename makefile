install::
	@git submodule update --init --recursive

build:: install
	@forge build

clean:: install
	@forge clean

fmt:: install
	@forge fmt

test:: install
	@forge test

update:: install
	@forge update
