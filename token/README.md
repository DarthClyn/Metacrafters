# TOKEN

## Description

A solidity smart contract that can mint and burn tokens as well as show balance of given address

## Getting Started

### Installing

I have used remix online compiler to write ,compile and deploy a basic smart contract
Use remix online compiler 

### Executing program

  Write the code in compiler orTo run this file download the token.sol or copy the code and add it into remix 
  Compile the code using default compiler settings
  Deploy the code
  Open deployed contract and give required values to functions
  (suggested sequence) Mint , Balance , Burn ,Balance
  The value of variables can be called at any given time to check total supply of coin , token name , and token abbv.
  
  
  The contract should obey:
  
  1. This contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
     Code:
     ```
         string public tokenName = "DARTH COIN";
    string public tokenAbrrv = "DRT";
    uint public totalSupply = 0;
    ```
  2. This contract will have a mapping of addresses to balances (address => uint)
    Code:
```
    mapping(address=>uint) public balances;
```
3. We will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount    
    Code:
```
         function mint(address _address, uint _value)public{
        totalSupply+=_value;
        balances[_address]+=_value;
    }
```
  4. My contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, our burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
       Code:
```
           function burn(address _address, uint _value)public{
        if (balances[_address]>= _value){
        totalSupply-=_value;
        balances[_address]-=_value;
        }
    }
```


## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details

