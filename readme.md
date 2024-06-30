# ErrorHandling Smart Contract
## Overview
This project contains a Solidity smart contract named ErrorHandling that demonstrates the use of three error handling mechanisms in Solidity: require, assert, and revert. These mechanisms help ensure that conditions are met and handle errors effectively in Ethereum smart contracts.

## Purpose
The primary purpose of this smart contract is to illustrate how to use require, assert, and revert statements in Solidity. Each function showcases a different aspect of error handling:

-require is used to validate inputs and conditions.
-assert is used to check for conditions that should always be true.
-revert is used to handle errors and revert the transaction.

## Functionality

-setOwner
Sets a new owner for the contract.

##  
    function setOwner(address newOwner) public {
    owner = newOwner;
    }


-testRequire
Demonstrates the use of require to validate that the input value is greater than 10.

##  
    function testRequire(uint value) public pure {
    require(value > 10, "Value must be greater than 10");
    }

-testAssert
Demonstrates the use of assert to check that the owner address is set to the zero address (which will fail since the owner is set to the contract deployer).

##
    function testAssert() public view {
    assert(owner == 0x0000000000000000000000000000000000000000);
    }

testRevert
Demonstrates the use of revert to forcefully revert the transaction with a custom error message.

## 
    function testRevert() public pure {
    revert("This is a revert statement");
    }