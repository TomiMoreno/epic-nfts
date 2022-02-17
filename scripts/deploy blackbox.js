const main = async () => {
  const nftContractFactory = await hre.ethers.getContractFactory("BlackBoxNFT");
  const nftContract = await nftContractFactory.deploy();
  await nftContract.deployed();
  console.log("BlackBoxNFT deployed to:", nftContract.address);

  let txn = await nftContract.makeABlackBox();

  await txn.wait();

  console.log("Blackbox created");
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
