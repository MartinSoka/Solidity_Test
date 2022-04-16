// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0;

contract SimpleStorage{

    uint256 public favoriteNum;

    struct Person{
        string name;
        uint256 favoriteNum;
    }

    Person[] public people;
    mapping(string=>uint256) public nameToFavoriteNum;

    function store (uint256 _num) public {
        favoriteNum = _num;
    }

    function retrieve() public view returns(uint256){
        return favoriteNum + 5;
    }

    function addPerson(string memory _name, uint256 _num) public {
        people.push(Person(_name, _num));
        nameToFavoriteNum[_name] = _num;
    }
}