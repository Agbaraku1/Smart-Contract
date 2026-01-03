//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {simplestorage} from "./simplestorage.sol";

contract Add5Number is simplestorage {
      function store (uint256 _newnumber) public override {
        myfavoriteNumber = _newnumber + 5;
      }
}