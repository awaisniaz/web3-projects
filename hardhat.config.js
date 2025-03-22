require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks:{
    sepolia:{
      url:"https://sepolia.era.zksync.dev",
      accounts:["0xe92ae88426684bd31c6b6bf137fd0b4a1609b76fd12061e772d1b6ff10ec7542"]
    }
  }
};
