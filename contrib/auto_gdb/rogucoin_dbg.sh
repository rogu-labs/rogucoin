#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.rogucoincore/rogucoind.pid file instead
rogucoin_pid=$(<~/.rogucoincore/testnet3/rogucoind.pid)
sudo gdb -batch -ex "source debug.gdb" rogucoind ${rogucoin_pid}
