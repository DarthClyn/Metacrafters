#LOOM VIDEO LINK IN PROJECT SUBMISSION MAYBE BROKEN : ```https://www.loom.com/share/b7f9215218f7414791138a70c0dcf04d?sid=4f4987d6-0aa9-4664-8893-ce19c9a103e4```
# Project:  Polygon ZK Circuit Implementation

## Description

Problem statement:ZK SNARK Designer Imagine that you wake up, check your email, and you see an interesting task: Polygon is asking you to design a new ASNARK circuit that implements some logical operations. You need to implement the circuit and deploy a verifier on-chain to verify proofs generated from this circuit 
For this project, you will create a circuit using the dream programming language that implements the following logical gate:
![image](https://github.com/DarthNexus/Metacrafters/assets/98768438/fec7a5c4-5c76-47c8-a503-ca325f4be67a)

### Getting Started & Executing program

Create a hardhat project using typescript

Write circuit code 

Add the smart contract to the contracts folder (.sol)(to verify)

Compile the contract

Add the goerli testnetwork in hardhat.config file

Call for verification and deployment using a deploy file

Verify on etherscan

Note: change the file name in circuits to multiplier from PCircuit


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
Verify proof
```
  function verifyProof(
            uint[2] memory a,
            uint[2][2] memory b,
            uint[2] memory c,
            uint[1] memory input
        ) public view returns (bool r) {
        Proof memory proof;
        proof.A = Pairing.G1Point(a[0], a[1]);
        proof.B = Pairing.G2Point([b[0][0], b[0][1]], [b[1][0], b[1][1]]);
        proof.C = Pairing.G1Point(c[0], c[1]);
        uint[] memory inputValues = new uint[](input.length);
        for(uint i = 0; i < input.length; i++){
            inputValues[i] = input[i];
        }
        if (verify(inputValues, proof) == 0) {
            return true;
        } else {
            return false;
        }
```
Calling verify proof in deply script
```
  const tx = await verifier.verifyProof(pi_a, pi_b, pi_c, input)

```
### Video explanation
 ```https://www.loom.com/share/b7f9215218f7414791138a70c0dcf04d?sid=4f4987d6-0aa9-4664-8893-ce19c9a103e4```
## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details

