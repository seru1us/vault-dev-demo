# vault-dev-demo

This repo is for other people to get a jumpstart into playing around in [Hashicorp Vault](https://www.vaultproject.io/). 

This demo was made in a ubuntu environment, but should work in most other nix distros. 

## Requirements

First things first, clone this repo into your chosen directory.


```sh
git clone https://github.com/seru1us/vault-dev-demo

cd vault-dev-demo
```

On your system, [download the latest version of Vault](https://www.vaultproject.io/downloads/) and place the binary in your new vault-dev-demo directory.

## Usage

This isn't mean to be secure or follow any best practices, and acts as a quick web server to play with Vault use cases. Considering that, a lot of the values are hard coded AND SHOULDN'T BE USED IN ANY SORT OF PRODUCTION ENVIRONMENT. If you want to break out of this and actually learn Vault architecture, I suggest following their stellar documenation.

With that said, simply run:

```sh
. ./vault-dev-demo.sh
```

making extra sure to include the leading ".", which sets your environment for you. The expected output should appear as such:

```sh
$ . ./vault-dev.sh 

Unseal Key: 7nyqy0n0WcPWT/eAeuTJffUEAFssrbt++tLZQK6K8nU=

VAULT_DEV_ROOT_TOKEN_ID: root
Current Vault Server PID: 12294
```

At this point, all the logs created by the vault binary will be redirected to the "logfile.log", and everything you need should be returned in the stdout. Now, at this point, there should be a server listening on http://127.0.0.1:7200. Now jump on over to [some](https://learn.hashicorp.com/vault/getting-started/first-secret) of the [tutorials](https://learn.hashicorp.com/vault/getting-started/dynamic-secrets) and keep some secrets!

If you want to kill the service, simply utilize the returned PID from the original output:

```sh
$ kill -9 12294
```


