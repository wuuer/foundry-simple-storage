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

# format Solidity

install vscode extension Solidity by JuanBlanco

open vscode user settings and add followings

```json
  "[solidity]": {
    "editor.defaultFormatter": "JuanBlanco.solidity"
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

```bash
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --interactive
````
