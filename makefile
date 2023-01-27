install::
	@git submodule update --init --recursive
build::
	@forge build
clean::
	@forge clean
fmt::
	@forge fmt
test::
	@forge test
update::
	@forge update