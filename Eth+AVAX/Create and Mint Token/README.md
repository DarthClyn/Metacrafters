# Create and Mint Token
  
## Description

Write a smart contract to create your own token on a local HardHat network. Once you have your contract, you should be able to use remix to interact with it.
From remix, the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.

### Getting Started
Create a hardhat project using javascript
Install openzepplin library
Add the smart contract to the contracts folder (.sol)
Compile the contract
Run the hardhat node
Add local network to metamask
Compile and deploy using remix

### Executing program

    To interact with this contract using Remix, follow these steps:
    
      1.Set up the Hardhat environment: Install Hardhat and create a new project directory.
      2.Create a new Solidity file (e.g., Points.sol) and paste the contract code into it.
      3.Run npx hardhat compile in your project directory to compile the contract.
      4.Deploy the contract to the local Hardhat network:
      5.Open Hardhat.config.js and modify the network configuration to match your local network settings.
      6.Run npx hardhat node to start the local network.
      7.In Remix, select the "Injected Metamask" environment to connect to the local network.
      8.Deploy the contract using Remix's deployment feature.
      9.Once the contract is deployed, you can interact with it using the functions provided in the contract


### Objective
  
 For this project, create a simple contract 3 functions:
        To mint tokens, call the mint function with the address and the desired amount.
        To burn tokens, call the burn function with the desired amount.
        To transfer tokens, call the transfer function with the recipient's address and the amount.
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
   The burn function and transfer function burn and transfer tokens repectivley
```
           function burn(uint256 amount) public {
                _burn(msg.sender, amount);
            }
        
            function transfer(address to, uint256 amount) public override returns (bool) {
                require(amount <= balanceOf(msg.sender), "Insufficient balance.");
                _transfer(msg.sender, to, amount);
                return true;
            }
        }
```
### Video explanation
  https://www.loom.com/share/c3a99a99e6f246d1b81fdd9f47a4a48d?sid=6fee231e-55c5-454b-b992-b5ede271eb79
## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details



