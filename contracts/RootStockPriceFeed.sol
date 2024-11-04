// contracts/RootStockPriceFeed.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract RootStockPriceFeed {
	AggregatorV3Interface internal priceFeed;

	constructor(address _priceFeed) {
		priceFeed = AggregatorV3Interface(_priceFeed);
	}

	function getLatestPrice() public view returns (int) {
		(
			,
			/* uint80 roundID */ int price /* uint startedAt */ /* uint timeStamp */ /* uint80 answeredInRound */,
			,
			,

		) = priceFeed.latestRoundData();
		return price;
	}
}
