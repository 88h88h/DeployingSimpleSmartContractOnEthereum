// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// Inheritance - it will make the child contract have all the properties and functions of the parent contract
contract ExtraStorage is SimpleStorage{
    // virtual keyword -it makes a function overridable
    // override keyword - it overrides a function of same name

    function store(uint256 _favouriteNumber) public override {
        favouriteNumber = _favouriteNumber + 5;
    }
}