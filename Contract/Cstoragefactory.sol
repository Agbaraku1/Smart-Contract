//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; //version

import {simplestorage} from "./simplestorage.sol";

contract Cstoragefactory {
    simplestorage[] public listofsimplestoragecontracts;

    function createnewsimplestoragecontract() public {
        simplestorage newsimplestoragecontracts = new simplestorage ();
        listofsimplestoragecontracts.push(newsimplestoragecontracts);
    }
    
    function sfstore(
        uint256 _simplestorageindex, 
        uint256 _simplestorageNumber) public {
        //simplestorage(address(simplestoragearray[_simplestorageindex]));
        listofsimplestoragecontracts[_simplestorageindex].store(_simplestorageNumber);
    }

      function sfGet(uint256 _simplestorageIndex) public view returns (uint256) 
      { // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return listofsimplestoragecontracts[_simplestorageIndex].retrieve();
      }
}