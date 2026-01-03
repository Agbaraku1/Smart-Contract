//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; //Latest version

contract simplestorage {
    uint256 myfavoriteNumber; //0

mapping (string => uint256) public nametofavoritenumber;
struct person {
    string name;
    uint256 favoriteNumber;
   }
person[] public listofpeople;

function store (uint256 _favoriteNumber) public {
    myfavoriteNumber = _favoriteNumber;
}

function retrieve () public view returns (uint256) {
   return myfavoriteNumber;
}

function addperson (string memory _name, uint256 _favoriteNumber) public {
    listofpeople.push (person (_name, _favoriteNumber));
    nametofavoritenumber[_name] = _favoriteNumber;
}

}

contract Storagefactory {
    simplestorage public mysimpleStorage;
    function createSimpleStorageContract() public {
     mysimpleStorage = new simplestorage ();
    }
}
