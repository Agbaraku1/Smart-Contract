//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; //version
import "./simplestorage.sol"; // best method is using import {simplestorage, simplestorage2} from "./simplestorage.sol";
contract storagefactory {
         simplestorage public mysimplestorage;
         function createsimplestoragecontract () public 
         {
    mysimplestorage = new simplestorage();
}
}








