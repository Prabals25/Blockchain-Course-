// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray; // Global variable of type SimpleStorage contract
    function createSimpleStorageContract() public {
        // How does our Storage Factory contract know what simple storage looks like?
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // Creating function to interact with the SimpleStorage contract 

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber ) public{
        // Address 
        // ABI - Application Binary Interface - These two are must in order to interact with any contract!
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber); // Address retrieval
        // simpleStorage.store(_simpleStorageNumber);

    }

    function sfGet (uint256 _simpleStorageIndex) public view returns(uint256){
        return simpleStorageArray[_simpleStorageIndex].retrive();
    }
}