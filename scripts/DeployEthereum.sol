// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;


import {Script} from "forge-std/Script.sol";
import {EthereumOFT} from "../contracts/EthereumStableCoinOFT.sol";


contract DeployOnEthereum is Script{


    function run() external{
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        EthereumOFT ethereumOFT = new EthereumOFT("GoodToken", "GT", 0x6EDCE65403992e310A62460808c4b910D972f10f, msg.sender);
        vm.stopBroadcast();
    }
}

