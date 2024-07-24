# install foundry

download git bash

[git bash](https://gitforwindows.org/)

downliad foundry intall script:

[scripts](https://raw.githubusercontent.com/foundry-rs/foundry/master/foundryup/install)

run the script by git bash

add foundry install path to environment variables

# format toml

install vscode extension Even Better TOML

open vscode user settings and add followings

```json
  "[toml]": {
    "editor.defaultFormatter": "tamasfe.even-better-toml"
  },
```

# create project

```bash
forge init --force
```

```bash
forge remappings > remappings.txt
```

# compile

```bash
forge compile
```

# run localnetwork

``bash
anvil

````

# deploy

command deployment

```bash
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --interactive
````

script deployment

```bash
forge script script/Deploy.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key [KEY]
```

# security

encrypt private key

```bash
cast wallet import [accountName] --interactive
```

script deploy using private key

```bash
forge script script/Deploy.sol --rpc-url [URL] --broadcast --account [accountName]
```

# intereact with contract

```bash
cast send [address] "store(uint256)" 123 --rpc-url [URL] --account [accountName]
```

```bash
cast call [address] "store(uint256)" 123 --rpc-url [URL] --account
```

# misc

gas convert from hex to dec

```bash
cast --to-base [hex] dec
```
