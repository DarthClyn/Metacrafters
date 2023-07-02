// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//For this project, you will write a smart contract to create your own token on a local HardHat network. 
//Once you have your contract, you should be able to use remix to interact with it.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract MyToken is ERC20 {
    address private owner;

    constructor() ERC20("Darth", "DRT") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function.");
        _;
    }
 //From remix, the contract owner should be able to mint tokens to a provided address.
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
// Any user should be able to burn and transfer tokens.
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        require(amount <= balanceOf(msg.sender), "Insufficient balance.");
        _transfer(msg.sender, to, amount);
        return true;
    }
}
