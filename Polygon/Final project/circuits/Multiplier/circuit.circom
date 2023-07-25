pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

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