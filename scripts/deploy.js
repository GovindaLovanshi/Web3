const hardhat = require("hardhat")

async function main() {
    const Lock = await hardhat.ethers.getContractFactory("Lock");
    const lock = await Lock.deploy(unlockTime,{value:lockedAmount});

    await lock.deployed();

    console.log("Tracking deployed to${lock.address}");
}

main().catch((error)=>{
    console.error(error);
    process.exitCode= 1;
})