// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import { SelfDestructCase } from "../src/SelfDestructCase.sol";

contract SelfDestructCaseScript is Script {
    SelfDestructCase public selfDestructCase;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployerAddress = vm.addr(deployerPrivateKey);
        vm.startBroadcast(deployerPrivateKey);

        selfDestructCase = new SelfDestructCase(1000);
        console.log("selfDestructCase====", address(selfDestructCase));

        vm.stopBroadcast();
    }
}
