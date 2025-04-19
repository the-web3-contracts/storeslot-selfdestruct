// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {AssemblyCase} from "../src/AssemblyCase.sol";

contract AssemblyCaseTest is Test {
    AssemblyCase public assemblyCase;

    function setUp() public {
        assemblyCase = new AssemblyCase();
    }

    function test_addNumbers() public {
        uint256 result = assemblyCase.addNumbers(100, 1000);
        console.log("result===", result);
    }


    function test_setAndGet() public {
        uint256 setAndGetRet = assemblyCase.setAndGet(1000);
        console.log("number", assemblyCase.number());
    }

}
