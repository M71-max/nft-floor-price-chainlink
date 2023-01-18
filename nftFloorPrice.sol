// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract NFTFloorPriceConsumerV3 {
    /**
     * Returns the latest price
     */
    function getLatestInfo(address collectionAddress) public view returns (uint80 roundID, int nftFloorPrice, uint startedAt, uint timeStamp, uint80 answeredInRound) {
        (
            roundID, nftFloorPrice, startedAt, timeStamp, answeredInRound            
        ) = AggregatorV3Interface(collectionAddress).latestRoundData();

    }

    function getLatestPrice(address collectionAddress) public view returns (int nftFloorPrice) {
        (
            ,
            nftFloorPrice,
            ,
            ,

        ) = AggregatorV3Interface(collectionAddress).latestRoundData();

    }

}
