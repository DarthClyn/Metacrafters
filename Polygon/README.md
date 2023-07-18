
# Project:  Polygon ZK Circuit Implementation

## Description

Problem statement:ZK SNARK Designer Imagine that you wake up, check your email, and you see an interesting task: Polygon is asking you to design a new ASNARK circuit that implements some logical operations. You need to implement the circuit and deploy a verifier on-chain to verify proofs generated from this circuit 
For this project, you will create a circuit using the dream programming language that implements the following logical gate:
![image](https://github.com/DarthNexus/Metacrafters/assets/98768438/fec7a5c4-5c76-47c8-a503-ca325f4be67a)

### Getting Started & Executing program

Create a hardhat project using typescript

Add the smart contract to the contracts folder (.sol)(to verify)

Compile the contract

Add the goerli testnetwork in hardhat.config file

Call for verification and deployment using a deploy file

Verify on etherscan


### Objective
  
  To successfully complete the Final Challenge, your project should:
  
  Write a correct circuit.circom implementation
  Compile the circuit to generate circuit intermediaries
  Generate a proof using inputs A=0 B=1
  Deploy a solidity verifier to Goerli Testnet
  Call the verifyProof() method on the verifier contract and assert output is true

### Code
```
                pragma circom 2.0.0;
              
             
              template Multiplier2 () {  
              
                 // Declaration of signals.  
                 signal input a;  
                 signal input b; 
                 signal  x;
                 signal  y; 
                 signal output q;  
              
                 component andG= AND();
                 component notG= NOT();
                 component orG= OR();
              
                 andG.a <== a;
                 andG.b <== b;
                 x <== andG.out;
              
                 notG.in <== b;
                 y <== notG.out;
              
                 orG.a <== x;
                 orG.b <==y;
                 q <== orG.out;
              
              }
              template AND() {
                  signal input a;
                  signal input b;
                  signal output out;
              
                  out <== a*b;
              }
              
              template OR() {
                  signal input a;
                  signal input b;
                  signal output out;
              
                  out <== a + b - a*b;
              }
              
              template NOT() {
                  signal input in;
                  signal output out;
              
                  out <== 1 + in - 2*in;
              }
              
              
              component main = Multiplier2();
```
### Video explanation
  ```https://www.loom.com/share/62b7434f480a4f5c8be330e426034cf6```
## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details


