# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
Building with Polygon Bridge
Imagine that you are working on a large NFT project. Your team decided to move your project to Polygon to increase demand and save on gas. Now it's your job to make this happen!

For this project, you will deploy an NFT collection on the Ethereum blockchain, Map the collection to Polygon, and Transfer assets over via the Polygon Bridge. To put a twist on the project, use an image generation tool - like DALLE 2 or Midjourney - to the images for your NFTs.

Tools Used
Hardhat
Foundry (optionally)
Project Rubric
To successfully complete the Final Challenge, your project should:

Generate a 5-item collection using DALLE 2 or Midjourney
Store items on IPFS using pinata.cloud
Deploy an ERC721 or ERC1155 to the Goerli Ethereum Testnet
You should have a promptDescription function on the contract that returns the prompt you used to generate the images
Map Your NFT Collection using Polygon network token mapper. Note: this isn’t necessary but helpful for visualization.
Write a hardhat script to batch mint all NFTs. Hint: ERC721A is optimal here.
Write a hardhat script to batch transfer all NFTs from Ethereum to Polygon Mumbai using the FxPortal Bridge
Approve the NFTs to be transferred
Deposit the NFTs to the Bridge
Test balanceOf on Mumbai
