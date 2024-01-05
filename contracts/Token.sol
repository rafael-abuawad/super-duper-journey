// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@solmate/tokens/ERC20.sol";

contract Token is ERC20 {
    uint8 private constant DECIMALS = 18;
    uint256 private constant INITIAL_SUPPLY = 100 ether;

    constructor() ERC20("Token", "TOKEN", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}