# Project: Degen Token (ERC-20): Unlocking the Future of Gaming

## Description

Problem statement:Are you up for a challenge that will put your skills to the test? Degen Gaming 🎮, a renowned game studio, has approached you to create a unique token that can reward players and take their game to the next level. You have been tasked with creating a token that can be earned by players in their game and then exchanged for rewards in their in-game store. A smart step towards increasing player loyalty and retention 🧠

To support their ambitious plans, Degen Gaming has selected the Avalanche blockchain, a leading blockchain platform for web3 gaming projects, to create a fast and low-fee token. With these tokens, players can not only purchase items in the store, but also trade them with other players, providing endless possibilities for growth📈

Are you ready to join forces with Degen Gaming and help turn their vision into a reality? The gaming world is counting on you to take it to the next level. Will you rise to the challenge 💪, or will it be game over ☠️ for you?

Challenge
Your task is to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:

Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
Transferring tokens: Players should be able to transfer their tokens to others.
Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
Checking token balance: Players should be able to check their token balance at any time.
Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

### Getting Started

Create a hardhat project using javascript
Install openzepplin library
Add the smart contract to the contracts folder (.sol)
Compile the contract
Run the hardhat node
Add local network to metamask
Compile and deploy using remix

### Executing program

   Your Project: Step by Step
      
      Create the ERC-20 token
      Set the name to “Degen”
      Set the symbol to “DGN”
      Test the smart-contract (All tests should pass)
      Deploy the contract to Avalanche Fuji Testnet
      Test on testnet (All tests should pass)
      Verify the smart-contract on Snowtrace


### Objective
  
 For this project, create a hardhat project:
 
        Add the fuji test network details to hardhat.config.js file ,Add account private key that is connected to fuji network
        Add snowtrace api in hardhat.config.js
        In deploy.js add function to print the adress where contract is deployed
        Deploy the contract on fuji test network using "npx hardhat run --network fuji scripts/deploy.js"
        Verify the contract using "npx hardhat verify <contract address> --network fuji"
        Click on the link in console to get to snowtrace site for verified contract
        In metamask switch to Avalance C chain network and add test faucet to an account
        In remix Set environment to injected metamask and connect the account
        Add the address of contract in remix "At Address button" to deploy the contract
        Now Call the defined functions and variable and see the transaction on snowtrace to verify 
### Code
  This import statement brings in the ERC20.sol contract from the OpenZeppelin Contracts library.
  ```
             import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
```
  Contract declaration and inheritance ,State variable declaration and initialization:
  ```
              contract MyToken is ERC20 {
              address private owner;
              constructor() ERC20("Darth", "DRT") {
              owner = msg.sender;
                                                    }
```              
  This modifier, onlyOwner, is a reusable piece of code that can be applied to other functions in the contract. It ensures that only the contract
  owner can call the function. It checks if the msg.sender (the caller of the function) is the same as the owner address
  ```
               modifier onlyOwner() {
                require(msg.sender == owner, "Only the contract owner can call this function.");
                _;
                                    }
```
   The mint function to mint tokens (owner only)
```
               function mint(address to, uint256 amount) public onlyOwner {
              _mint(to, amount);
                    }
```
   The burn function to burn the tokens
```
           function burn(uint256 amount) public {
                _burn(msg.sender, amount);
            }
```
   The transfer function to transfer tokens between users.
```
            function transfer(address to, uint256 amount) public override returns (bool) {
                require(amount <= balanceOf(msg.sender), "Insufficient balance.");
                _transfer(msg.sender, to, amount);
                return true;
            }
        }
```
The reedem  function to reedem items from the store that can be viewd by showStore function
```
                function redeem(uint256 item) external {
                    uint amount;
                    if (item ==1){
                        amount=150;
                    }
                    else if(item ==2){
                        amount=200;
                    }
                    else {
                        amount=6-0;
                    }
                    require(amount > 0, "Invalid redeem amount");
                    _burn(msg.sender, amount);
                }
                function showStore() external pure returns (string memory) {
                    return "1. DGN K.E.Y NFT__ ( 150 DGN ) __ 2. DGN HAMMER NFT __ ( 200 DGN ) __ 3. DGN MEMBER NFT__(600 DGN)__";
                }
```
### Video explanation
  https://www.loom.com/share/fab8dc2dd6074c23846c852ad233e313?sid=d9e10b41-272c-4ecd-9f38-95f922953d0b
## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details


