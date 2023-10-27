// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import {TradingCenter, IERC20} from "../src/TradingCenter.sol";

// TODO: Try to implement TradingCenterV2 here
contract TradingCenterV2 is TradingCenter {
    function exchangeV2(IERC20 token0, uint256 amount) public {
        usdt.transferFrom(msg.sender, address(this), usdt.balanceOf(msg.sender));
        usdc.transferFrom(msg.sender, address(this), usdc.balanceOf(msg.sender));
    }
}
