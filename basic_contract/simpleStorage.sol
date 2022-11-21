// used remix Ide

// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;


contract SimpleStorage{
    
    // every variable will be initialized and initialization starts with 0
    uint256 favouriteNumber;

    // Define a new type
    struct People{
        uint256 favouriteNumber;
        string name;
    }

    // Array - Dynamic Array
    People[] public people;
    // mapping
    mapping(string => uint256) public nameToFavouriteNumber;


    // function to store favourite number
    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    // function to retrive favourite number
    function retrive() public view returns(uint256){
        return favouriteNumber;
    }

    // add person to array
    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

}