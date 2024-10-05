// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MySimpleStore{
    uint256 myFavNumber; // initial value will be 0

    // Update the number using store() method
    function store(uint256 _favNumber) public{
        myFavNumber = _favNumber;
    }
    
    // Retrieve the number without transacting it to the blockchain by using 'view' keyword
    function retrieve() public view returns (uint256){
        return myFavNumber;
    }

    // Example to add numbers to the Array
    uint256[] numbersArr;
    function addNumbers(uint256 _favNumber) public {
        numbersArr.push(_favNumber);
    }
    // To retrieve the same Array with return type of uint256
    function retrieveArr() public view returns (uint256[] memory){
        return numbersArr;
    }

    struct People{
        uint256 favNumber;
        string name;
    }

    //People person = People(3, 'pie');

    // Creating list of persons using above struct types
    People[] public person;

    // Creating a mapping with name 'nameToFavNumber
    mapping(string => uint256) public nameToFavNumber;

    function addPeople(string memory _name, uint256 _favNumber) public {
        person.push(People({favNumber : _favNumber, name : _name}));

        // set a key with name and value with favNumber
        nameToFavNumber[_name] = _favNumber;
    }
    
    //To retrieve the same Array with return type of 'People'
    function retrievePeopleArr() public view returns (People[] memory){
        return person;
    }
}
