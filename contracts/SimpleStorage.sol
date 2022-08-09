// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // Most current: 0.8.12 . Can use caret for above version. ## >=0.8.7 < 0.9.0 also works !!

// Every smart contract has an adderess just like our wallets in blockchain ecosystem.

contract SimpleStorage {
    uint256 public favoriteNumber; // This gets initialized to Zero- Automatic Specifier by default

    function store(uint256 _favoriteNumber) public virtual{
        favoriteNumber = _favoriteNumber;
        retrive();
    }

    // View & Pure functions don't consume gas || disallow modification of state.
    
    // Pure function don't even allow reading the state.

    // ** function add() public pure returns(uint256){
    //     return 2; // "returns favoriteNumber+5" is invalid !!
    // }

    // **  function store(uint256 _favoriteNumber) public {
    //     favoriteNumber += _favoriteNumber;
    //     retrive(); //--> HERE GAS WILL BE CONSUMED !
    //                //--> WHENEVER VIEW/PURE F(n) ARE CALLED WITHING GAS CONSUMING F(n)
    //                //--> EXECUTION GAS IS CONSUMED!
    // }

    function retrive() public view returns(uint256){
        return favoriteNumber;
    } // --> NO GAS CONSUMED HERE.


    /* *** Structures ***/


    People[] public people; // Array of struct People. Dynamic Initialization !

    struct People{
        uint256 num;
        string name;
    }

    // People person = People({num: 7,name: "Prabal"});  --> This is how we create one object of struct.

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }


    // Mappings (Data Structure) -> Maps in C++

    mapping(string => uint256) public nameToFavoriteNumber;

    // Deploying First contract
    

}