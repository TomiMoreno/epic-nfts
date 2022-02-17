const main = async () => {
  const nftContractFactory = await hre.ethers.getContractFactory("DoodleNFT");
  const nftContract = await nftContractFactory.deploy();
  await nftContract.deployed();
  console.log("DoodleNFT deployed to:", nftContract.address);

  let txn = await nftContract.makeADoodle();

  await txn.wait();

  console.log("Doodle created");
  console.log(txn);
};

const runMain = async () => {
  try {
    await main();
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();
