// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //updated version
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
library priceconverter {
function getPrice() internal view returns(uint256) {
            AggregatorV3Interface pricefeed = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
            (,int256 price,,,) = pricefeed.latestRoundData();
            return uint256(price * 1e10);
    }

    function getConversionRate(uint256 ethAmount) internal view returns(uint256) {
             uint256 ethPrice = getPrice();
             uint256 ethAmountInUSD = (ethPrice * ethAmount) / 1e18;
             return  ethAmountInUSD;
    }

    function getversion() internal view returns (uint256) {
        return AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419).version();
    }


}