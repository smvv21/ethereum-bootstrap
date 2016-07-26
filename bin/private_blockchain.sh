#!/bin/bash

geth=${GETH:-geth}
# it must establish from the same genesis.json if they are brother nodes!
$geth --datadir data init ./genesis.json
# default lenstening  localhost:8545  and  30303 p2p port
$geth --datadir data --networkid 162161 --rpc --rpccorsdomain "*"   --mine --gasprice 1 console
