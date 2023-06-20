# Foundry Template [![Github Actions][gha-badge]][gha] [![Foundry][foundry-badge]][foundry] [![pre-commit][pre-commit-badge]][pre-commit] [![License: MIT][license-badge]][license]

[gha]: https://github.com/hifi-finance/foundry-template/actions
[gha-badge]: https://github.com/hifi-finance/foundry-template/actions/workflows/ci.yml/badge.svg
[foundry]: https://getfoundry.sh/
[foundry-badge]: https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg
[license]: https://opensource.org/licenses/MIT
[license-badge]: https://img.shields.io/badge/License-MIT-blue.svg
[pre-commit]: https://pre-commit.com
[pre-commit-badge]: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit

## Overview

A lightning-fast Foundry template for Solidity smart contract development.

## What's Inside

- [Forge](https://github.com/foundry-rs/foundry/blob/master/forge): compile, test, fuzz, debug and deploy smart
  contracts
- [Forge Std](https://github.com/foundry-rs/forge-std): collection of helpful contracts and cheatcodes for testing

## Getting Started

Click the [`Use this template`](https://github.com/hifi-finance/foundry-template/generate) button at the top of the page to
create a new repository with this repo as the initial state.

Or, if you prefer to install the template manually:

```sh
forge init my-project --template https://github.com/hifi-finance/foundry-template
cd my-project
make
```

This project was built using [Foundry](https://book.getfoundry.sh/). Refer to installation instructions [here](https://github.com/foundry-rs/foundry#installation).

## Features

This template builds upon the frameworks and libraries mentioned above, so for details about their specific features,
please consult their respective documentations.

For example, for Foundry, you can refer to the [Foundry Book](https://book.getfoundry.sh/). You might be in particular
interested in reading the [Writing Tests](https://book.getfoundry.sh/forge/writing-tests.html) guide.

### Sensible Defaults

This template comes with sensible default configurations in the following files:

```text
├── .commitlintrc.yaml
├── .gitattributes
├── .gitignore
├── .gitmodules
├── .pre-commit-config.yaml
├── foundry.toml
├── makefile
└── remappings.txt
```

### VSCode Integration

This template is IDE agnostic, but for the best user experience, you may want to use it in VSCode with Juan Blanco's
[Solidity extension](https://github.com/juanfranblanco/vscode-solidity).

For guidance on how to integrate a Foundry project in VSCode, please refer to this
[guide](https://book.getfoundry.sh/config/vscode).

### GitHub Actions

This template comes with GitHub Actions pre-configured. Your contracts will be linted and tested on every push and pull
request made to the `main` branch.

You can edit the CI script in [.github/workflows/ci.yml](./.github/workflows/ci.yml).

### Conventional Commits

This template enforces the [Conventional Commits](https://www.conventionalcommits.org/) standard for git commit
messages. This is a lightweight convention that creates an explicit commit history, which makes it easier to write
automated tools on top of.

## Writing Tests

To write a new test contract, you start by importing [DSTest](https://github.com/dapphub/ds-test) and inherit from
it in your test contract. DSTest comes with a pre-instantiated [cheatcodes](https://book.getfoundry.sh/cheatcodes/)
environment accessible via the `vm` property. You can also use
[console.log](https://book.getfoundry.sh/faq?highlight=console.log#how-do-i-use-consolelog), whose logs you can see in
the terminal output by adding the `-vvvv` flag.

This template comes with an example test contract [Foo.t.sol](./tests/Foo.t.sol).

## Commands

To make it easier to perform some tasks within the repo, a few commands are available through a [makefile](https://github.com/hifi-finance/foundry-template/blob/main/makefile):

### Build Commands

| Command          | Action                                                   |
| ---------------- | -------------------------------------------------------- |
| `make build`     | Compile all contracts in the repo, including submodules. |
| `make clean`     | Delete the build artifacts and cache directories.        |
| `make fmt-check` | Lint the contracts.                                      |
| `make fmt-write` | Format the contracts.                                    |

### Test Commands

| Command           | Description                       |
| ----------------- | --------------------------------- |
| `make coverage`   | Get a test coverage report.       |
| `make test`       | Run all tests located in `tests/`. |
| `make gas-report` | Get a gas report.                 |

Specific tests can be run using `forge test` conventions, specified in more detail in the Foundry [Book](https://book.getfoundry.sh/reference/forge/forge-test#test-options).

### Deploy Commands

| Command       | Description      |
| ------------- | ---------------- |
| `make deploy` | Deploy to Anvil. |

For instructions on how to deploy to a testnet or mainnet, check out the
[Solidity Scripting tutorial](https://book.getfoundry.sh/tutorials/solidity-scripting.html).

## Notes

1. Foundry piggybacks off [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to manage dependencies.
   There's a [guide](https://book.getfoundry.sh/projects/dependencies.html) about how to work with dependencies in the
   book.
2. You don't have to create a `.env` file, but filling in the environment variables may be useful when debugging and
   testing against a mainnet fork.

## Related Efforts

- [PaulRBerg/foundry-template](https://github.com/PaulRBerg/foundry-template)
- [ScopeLift/foundry-template](https://github.com/ScopeLift/foundry-template)
- [abigger87/femplate](https://github.com/abigger87/femplate)
- [cleanunicorn/ethereum-smartcontract-template](https://github.com/cleanunicorn/ethereum-smartcontract-template)
- [foundry-rs/forge-template](https://github.com/foundry-rs/forge-template)
- [FrankieIsLost/forge-template](https://github.com/FrankieIsLost/forge-template)

## License

[MIT](./LICENSE.md) © Mainframe Group Inc.
