#!/usr/bin/env bash

if [ -f ../../.env ]
then
  export $(cat ../../.env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

echo "Which contract do you want to verify?"
read contract
echo "Submitting verification request for $contract..."

forge verify-contract --compiler-version v0.8.13+commit.abaa5c0e $contract --num-of-optimizations 200 ./src/MockERC20.sol:MockERC20 ${ETHERSCAN_API_KEY} --chain-id 5