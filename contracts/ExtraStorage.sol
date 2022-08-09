// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// Inheritance 
contract ExtraStorage is SimpleStorage {
    // Function overriding 
    // Keywords used : virtual->used in parent f(n) & override->used in f(n) to be overriden
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber=_favoriteNumber+5;
    }
}