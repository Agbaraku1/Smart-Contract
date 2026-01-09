// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; //updated version
import {priceconverter} from "./PriceConverter.sol";

contract NewFundMe {
    using priceconverter for uint256;
    uint256 public minimumUSD =5 * 1e18; //10000000000000000000
    address[] public funders;
    mapping(address funder => uint256 amountfunded) public addressToAmountFunded;

    function fund() public payable {
        require(msg.value.getConversionRate() >= minimumUSD, "You need to spend more ETH!");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value;
    }

}