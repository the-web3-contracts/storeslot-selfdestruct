// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract StorageSlot {
    address bd; // slot 0
    uint8 bd1;   // slot 0 (中间8字节)
    uint8 bd12;   // slot 0 (中间8字节)
    uint128 a;  // slot 0 (前16字节)
    uint64 b;   // slot 0 (中间8字节)
    uint64 c;   // slot 0 (最后8字节)
    uint256 d;  // slot 1 (新槽位)
    uint256[] arr; // slot2  所占用的 slot 放的是数组的长度

    uint256 ddd;  // slot 1 (新槽位)

    mapping(uint256 => uint256) public map; // slot3  所占用的 slot 放的是数组的长度

    function PushArray(uint256 value) public {
        arr.push(value);
    }
}
