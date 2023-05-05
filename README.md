# Metacrafters
Project files related to metacrafter
Author- Harshit saini
Username- GIT-MERCHANT
I have used remix online compiler to write ,compile and deploy a basic smart contract

The smart contract REQUIREMENTS:
    1. This contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. This contract will have a mapping of addresses to balances (address => uint)
    3. We will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. My contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, our burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
To run this file download the token.sol or copy the code and add it into remix 
  Compile the code using default compiler settings
  Deploy the code
  Open deployed contract and give required values to functions
  (suggested sequence) Mint , Balance , Burn ,Balance
  The value of variables can be called at any given time to check total supply of coin , token name , and token abbv.
