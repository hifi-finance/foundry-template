build:
	@forge build
clean:
	@forge clean
fmt:
	@forge fmt
install:
	@git submodule update --init --recursive
test:
	@forge test
update:
	@forge update