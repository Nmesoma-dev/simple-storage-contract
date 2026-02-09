// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage storageContract;

    function setUp() public {
        storageContract = new SimpleStorage();
    }

 function testInitialValueIsZero() public {
    uint256 value = storageContract.get();
    assertEq(value, 0);
 }

 function testSetValue() public {
    storageContract.set(100);
    assertEq(storageContract.get(), 100);
 }
 }

