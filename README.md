## Solidity 内存布局小案例

### Build

```shell
$ forge build
```

### 查看合约的 slot 情况

- forge 命令
```shell
forge inspect StorageSlot storage-layout
```

- cast 命令
```shell
cast storage <合约地址> <槽位号> --rpc-url <你的RPC地址>
```

### 合约自毁

- 部署合约
```
forge script ./script/SelfdestructCase.s.sol:SelfDestructCaseScript --rpc-url 127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

- 转入资金
```
cast send --rpc-url 127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 0x5FbDB2315678afecb367f032d93F642f64180aa3 --value 1000000000000000000
```

- 查询 balance
```
cast balance --rpc-url 127.0.0.1:8545 0x5FbDB2315678afecb367f032d93F642f64180aa3
```

- 调用合约自毁
```
cast send --rpc-url 127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 0x5FbDB2315678afecb367f032d93F642f64180aa3 "destroyContract(address)" 0xee2E207D30383430a815390431298EBa3c1C8c2d
```

```
cast call --rpc-url 127.0.0.1:8545 0x5FbDB2315678afecb367f032d93F642f64180aa3 "stateVar()(uint256)"
```
