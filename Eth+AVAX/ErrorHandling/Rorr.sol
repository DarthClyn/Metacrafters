// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error {
    
    uint public Alice=0;

    //Cannot withdraw more than we have
    function withdraw(uint _i) public   {
        require(Alice > _i, "Alice does not have enough money");
        Alice-=_i;
    }

    //Cannot deposit if it results in valur greater than 100
    function deposit(uint _i) public   {
        Alice+=_i;
        if (Alice > 100) {
            revert("Alice can not have more than 100");
        }
    }

    //Check is Alice has value 0
    function isempty() public view returns (string memory){
        assert(Alice == 0);
        return "Yes, Alice has no money";
    }

}
