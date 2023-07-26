// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// project: functions and errors
// Requirements: For this project, write a smart contract that implements the require(), assert() and revert() statements.

contract functionAndErrors {
    function requireFunction(uint i) public pure returns (uint) {
        require(i > 10, "Value is less than 10");

        return i * 10;
    }

    function assertFunction(uint i) public pure returns (uint) {
        assert(i > 10);

        return i * 10;
    }

    function revertFunction(uint i) public pure returns (uint) {
        if (i < 10) {
            revert("Value is less than 10");
        } else {
            return i * 10;
        }
    }
}
