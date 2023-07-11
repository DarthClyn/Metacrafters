# Integrating Smart Contract
  

## Description

Create a simple contract with 2-3 functions. Then show the values of those functions in frontend of the application.

### Getting Started
Ethers.js
The ethers.js library is a compact library for interacting with the Ethereum Blockchain and its ecosystem.
It was originally designed for use with ethers.io and has since expanded into a more general-purpose library.

Application flow
Firstly, connect your wallet by clicking on connect wallet button.
Your balance will be updated automatically after each transaction.
You can deposit the balance into your account by clicking the deposit button.
You can withdraw funds using Withdraw button.
## Code
  3 Events
```
    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event Buy(uint item);
```
4 Functions
  To see current balance

    function getBalance() public view returns(uint256){
        return balance;
    }
To deposit ether

    function deposit(uint256 _amount) public payable {
        uint _previousBalance = balance;
        require(msg.sender == owner, "You are not the owner of this account");
        balance += _amount;
        assert(balance == _previousBalance + _amount);

        emit Deposit(_amount);
    }
  To withdraw ether

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);
    function withdraw(uint256 _withdrawAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        uint _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }
        balance -= _withdrawAmount;
        assert(balance == (_previousBalance - _withdrawAmount));
        emit Withdraw(_withdrawAmount);
    }

  To Buy nft from shop
  
    function buy(uint256 item) external {
        uint amount;
        if (item ==1){
            amount=150;
        }
        else if(item ==2){
            amount=200;
        }
        else {
            amount=600;
        }
        require(amount > 0, "Invalid redeem amount");
        withdraw(amount);
        emit Buy(item);
    }
}
```
### Executing program
```
Create a hardhat project and add your smart contract to it 
Add the front end files
```
OR
```
After cloning the github, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: npm i
2. Open two additional terminals in your VS code
3. In the second terminal type: npx hardhat node
4. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
5. Back in the first terminal, type npm run dev to launch the front-end.
```

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/
### Objective
  
 For this project, create a simple contract with 2-3 functions. Then show the values of those functions in frontend of the application.

### Video explanation
  https://www.loom.com/share/92edb26d91264b28a0af312973be5762?sid=1a7896a2-f384-443b-8985-8c489d2b7c5e

## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details




