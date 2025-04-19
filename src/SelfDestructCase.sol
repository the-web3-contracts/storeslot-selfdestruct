// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract SelfDestructCase {
    address public owner;
    uint256 public stateVar;

    constructor(uint256 _stateVar) {
        owner = msg.sender;
        stateVar = _stateVar;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function destroyContract(address payable recipient) public onlyOwner {
        selfdestruct(recipient);
    }

    receive() external payable {}
}

