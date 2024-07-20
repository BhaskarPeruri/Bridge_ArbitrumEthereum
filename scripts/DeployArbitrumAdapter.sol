// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {ArbitrumAdapter} from "../contracts/ArbitrumStableCoinAdapter.sol";

contract DeployArbitrumAdapter is Script{

   

    function run() external{
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        ArbitrumAdapter arbitrumAdapter = new ArbitrumAdapter(
        0x292b34fB4737908a73CedF028df1cB4f7b38f3B9,/*mintable token address */
        0x6EDCE65403992e310A62460808c4b910D972f10f,/*layerzero end point address */
        msg.sender);
        vm.stopBroadcast();

    }
}
