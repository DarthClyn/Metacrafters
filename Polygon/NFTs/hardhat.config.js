require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: {
    compilers: [
      {
        version: "0.8.0",
      },
      {
        version: "0.8.9",
      },
    ],
  },
  networks: {
    mumbai: {
      url: 'https://rpc-mumbai.maticvigil.com',
      accounts: ["10a867b51bb123eb52f5129a0cd1613e773d9ef6758e79401120da9f2c1850c7"],
    },
    goerli: {
      url: `https://rpc.ankr.com/eth_goerli`,
      accounts: ["10a867b51bb123eb52f5129a0cd1613e773d9ef6758e79401120da9f2c1850c7"],
    },
    sepolia: {
      url: 'https://ethereum-sepolia.blockpi.network/v1/rpc/public',
      accounts: ["10a867b51bb123eb52f5129a0cd1613e773d9ef6758e79401120da9f2c1850c7"],
    },
  },
};
