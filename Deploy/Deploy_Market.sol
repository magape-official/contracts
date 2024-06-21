// SPDX-License-Identifier: None
pragma solidity 0.8.0;

import {Upgrade} from "../Deploy/Upgrade.sol";
import {Market} from "../Market/Market.sol";

contract Marketplace is Upgrade(address(new Market())) {
    constructor() {
        assembly {
            sstore(ER5, 0xd73d9339b38c462cC41DB4548f67Dd6774326866) // node address
            sstore(TTF, 0x2f75Bf420A799829D3C4060c1D25EAe8F940fC37) // $MAC address
        }
    }
}
