#!/usr/bin/env bash

if [ -f ../../.env ]
then
  export $(cat ../../.env | xargs)
else
    echo "Please set your .env file"
    exit 1
fi

#--constructor-args "USD" "USD" 18 1000000000000000000000 \
forge create --rpc-url ${GOERLI_API_KEY} \
    --etherscan-api-key ${ETHERSCAN_API_KEY}  \
    --private-key ${PRIVATE_KEY} \
    src/MockERC20.sol:MockERC20
