//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; //version

contract fundme{
    uint256 public myvalue = 1;
    function fund() public payable {
        myvalue = myvalue + 2;
     require (msg.value > 1e18, "didnt send enough ether");
    }
}