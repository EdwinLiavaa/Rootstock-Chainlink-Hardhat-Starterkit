// scripts/deploy.ts
import { ethers } from "hardhat";

async function main() {
    // Replace with actual Chainlink Price Feed address for RSK
    const PRICE_FEED_ADDRESS = "0xEd752dCE9f6c1Db35FeDABca445617A0d2B0b674";

    const RootStockPriceFeed = await ethers.getContractFactory("RootStockPriceFeed");
    const priceFeed = await RootStockPriceFeed.deploy(PRICE_FEED_ADDRESS);

    await priceFeed.deployed();

    console.log(`Price Feed deployed to ${priceFeed.address}`);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});