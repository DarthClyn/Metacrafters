Error Handling
  Final Assesment of module 1 

## Description

Create a solidity smart contract has error handling statements and their use.

## Getting Started

### Installing

I have used remix online compiler to write ,compile and deploy a basic smart contract
Use remix online compiler 

### Executing program

  Write the code in compiler orTo run this file download the rror.sol or copy the code and add it into remix 
  Compile the code using default compiler settings
  Deploy the code
  Open deployed contract and give required values to functions
 
### Theory
  There are three methods that constitute the error-handling process in Solidity:
          
          require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.
          The first parameter is the condition that you want to validate and the second parameter is the message that will be passed back to the caller if the                condition fails. If the condition is satisfied, then the execution of the function continues and the execution jumps to the next statement. However, if             the condition fails, then the function execution is terminated and the message (the second parameter) is displayed in the logs. The second parameter,               however, is optional. require() will work even if you pass only parameter, that is, the condition to be checked. 
          
          assert(): The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is             terminated with an error message.assert() takes only one parameter as input. You pass a condition to assert(), and if the condition is true, then the               function execution continues and the execution jumps to the next statement in the function. 
          
          revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message              will be passed back to the caller. However, the message, like in require(), is an optional parameter. revert() causes the EVM to revert all the changes             made to the state, and things return to the initial state or the state before the function call was made.
          The reason for reverting is that there is no safe way to continue execution because something unexpected happened. This is important as it helps in                 saving gas.
  
  The contract should obey:
  
    1. This contract will have a variable Alice and 3 function each using 1 error handling statement i.e. require ,revert ,assert.
        Code:
            uint public Alice=0;
    
    2. We will have a withdraw function that takes one parameter and decrements value of Alice by the amount passed and use 
        require statement to check if alice has enough value to withdraw from else give the error message 
        Code:
            //Cannot withdraw more than we have
            function withdraw(uint _i) public   {
            require(Alice > _i, "Alice does not have enough money");
            Alice-=_i;
            }
    3. We will have a deposit function that takes one parameter and increments value of Alice by the amount passed and use 
        revert statement to check if after increment alice has emore than 100 value than it reverts the transaction and value will not be added
        and a error message will be displayed
        Code:
            //Cannot deposit if it results in valur greater than 100
            function deposit(uint _i) public   {
            Alice+=_i;
            if (Alice > 100) {
                  revert("Alice can not have more than 100");
                }
            }  
    4. We will have a isempty function that takes no parameter and check wether value of Alice is 0 or not id not it gives error and function 
       does not execute if true it returns a string
       Code:
           //Check is Alice has value 0
           function isempty() public view returns (string memory){
           assert(Alice == 0);
           return "Yes, Alice has no money";
           }



## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details

