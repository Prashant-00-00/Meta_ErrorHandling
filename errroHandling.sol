// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setOwner(address newOwner) public {
        owner = newOwner;
    }

    function testRequire(uint value) public pure {
        require(value > 10, "Value must be greater than 10");
    }

    function testAssert() public view{
        assert(owner == 0x0000000000000000000000000000000000000000);
    }

    function testRevert() public pure{
        revert("This is a revert statement");
    }
}
