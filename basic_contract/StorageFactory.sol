// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

// Import other file
import "./SimpleStorage.sol";

contract StorageFactory{
    // creating an simple storage array
    SimpleStorage[] public simpleStorageArray;


    // function to deploy simplestorage contract
    function createSimpleStorageContract() public {
        // obj-type var = new contract();
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // callling function from SimpleStorage
    function StorageFactoryStore(uint256 _simpleStorageIndex, uint256 _favouriteNumber) public {
        // address of contract we intract with
        // ABI = Application Binary Interface
        // return contract
        SimpleStorage simpleStrorageContract = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStrorageContract.store(_favouriteNumber);
    }

    function StorageFactoryRetrive(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage simpleStrorageContract = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStrorageContract.retrive();
    }

}