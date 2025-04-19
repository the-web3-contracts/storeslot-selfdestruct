// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract AssemblyCase {
    uint256 public number;

    constructor(){
    }

    function addNumbers(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := add(a, b)  // 执行的是 EVM 加法的指令，OP_ADD
        }
    }

    function readWriteMemory(uint256 input) public pure returns (uint256 output) {
        assembly {
            let pointer := mload(0x40) // 获取内存的空闲位置
            mstore(pointer, input)    // 将 input 写入内存
            output := mload(pointer) // 从内存读取值
        }
    }


    function setAndGet(uint256 value) public returns (uint256) {
        assembly {
            sstore(0, value)  // 将 value 存储到 slot 0
            let result := sload(0)  // 从 slot 0 加载值
            return(0, 32)     // 返回值（32 字节）
        }
    }

}
