/*
Write a simple contract and declare four different types of variables.
Write get and set functions for each of these variables. Return the value of the variable in the “set function”.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Challenge_1 {
    bool a;
    int256 b;
    address c;
    string d;

    function get(bool _a, int256 _b, address _c, string memory _d) public {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function set() public view returns (bool, int256, address, string memory) {
        return (a, b, c, d);
    }
}
