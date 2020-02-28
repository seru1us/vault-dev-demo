#!/usr/bin/bash

rm -rf logfile.log
mkdir -p plugins

./vault server -dev -dev-listen-address=0.0.0.0:7200 -dev-root-token-id="root" -log-level="info" -dev-plugin-dir="plugins" &>> logfile.log &

source /etc/environment
export VAULT_ADDR=http://127.0.0.1:7200
export VAULT_DEV_ROOT_TOKEN_ID="root"
export PATH=$PATH:.
sleep 2

printf "\n"
grep "Unseal Key:" logfile.log
printf "\n"
printf "VAULT_DEV_ROOT_TOKEN_ID: root"
printf "\n"
printf "Current Vault Server PID: "
pgrep -f "./vault server"


