// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ValueTypes{
    // There are 2 data types: values and references

    string public message = "Hello, Web3 World!";

    // values - int, uint, byte, boolean, address
    bool public b = true;
    int256 public i = -2; // range between from -2**255  to 2**255 - 1 
    uint256 public ui = 90; // range between from 0 to 2**256 - 1 
    int256 minInt = type(int256).min;
    int256 maxInt = type(int256).max;
    address addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 b32 = 0x7465737400000000000000000000000000000000000000000000000000000000;

    // references - array, string, mapping


}
