// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/MyProjectContract.sol";

contract MyProjectContractTest is Test {
    MyProjectContract projectContract;

    function setUp() public {
        projectContract = new MyProjectContract();
    }

    function testInitialValueIsZero() public {
        uint256 value = projectContract.get();
        assertEq(value, 0);
    }

    function testSetValue() public {
        projectContract.set(10);
        assertEq(projectContract.get(), 10);
    }
}
