//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external {
        vm. startBroadcast();
        new SimpleStorage();
        vm. stopBroadcast();
    }
}