// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {ArbitrumStableCoinAdapter} from "../contracts/ArbitrumStableCoinAdapter.sol";

contract DeployOnArbitrum is Script{

   

    function run() external{
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        ArbitrumStableCoinAdapter arbitrumStableCoinAdapter = new ArbitrumStableCoinAdapter(
        0x966570A84709D693463CDD69dCadb0121b2C9d26,/*mintable token address */
        0x6EDCE65403992e310A62460808c4b910D972f10f,/*layerzero end point address */
        msg.sender);
        vm.stopBroadcast();

    }
}
