const hre = require("hardhat");

async function main() {
    const EventTest = await hre.ethers.getContractFactory("Challenge_1");
    const eventTest = await EventTest.deploy();

    await eventTest.deployed();

    eventTest.on("Add", (a, b) => {
        console.log(`New add: ${a} ${b}`);
    })

    eventTest.on("Subtract", (a, b) => {
        console.log(`New subtract: ${a} ${b}`);
    })

    eventTest.on("Multiply", (a, b) => {
        console.log(`New multiply: ${a} ${b}`);
    })

    eventTest.on("Divide", (a, b) => {
        console.log(`New divide: ${a} ${b}`);
    })

    console.log(
        `Contract deployed to ${eventTest.address}`
    );

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});