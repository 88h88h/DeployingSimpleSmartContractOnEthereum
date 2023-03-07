// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // ^ means that any version above that will work
// if we specify like >= 0.8.0 < 0.9.0 it would mean any version greater than equal to 0.8.0 but less than 0.9.0 will work

contract SimpleStorage{
    // contract is similar to class in OOP languages

    uint256 public favouriteNumber; // This get initialized to zero
    mapping(string => uint256) public nameToFavoriteNumber; // Similar to objects in javascript

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people; // [] If no number is specified then its a dynamic array else its a fixed array

    function store(uint256 _favouriteNumber) public virtual{
        // virtual makes a function overridable
        favouriteNumber = _favouriteNumber;
    } 

    // view , pure
    // view and pure functions disallow modification of state of the blockchain, so they don't cost gas
    // View just lets you read the data
    // Pure functions additionally disallow you to read from blockchain state
    // Pure functions are used when you want to do a functions which doesn't need to read from the blockchain
    // Gas is consumed only when any modification is done in the blockchain
    // If a gas calling function calls a view or pure function - only then it will consume gas
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }

    function addPeople(string memory _name, uint256 _favouriteNumber) public{
        people.push(People(_favouriteNumber, _name));
        nameToFavoriteNumber[_name] = _favouriteNumber;
    }
}