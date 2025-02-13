// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract VendingMachine {
    address payable public owner;

    error Unauthorized();
    event Log(address sender, uint256 value);

     constructor() payable{
        owner = payable(msg.sender); // Initialize owner in the constructor
    }

    function withdraw() public {
        if (msg.sender != owner) {
            revert Unauthorized();
        }
        emit Log(address(this), address(this).balance); // Log before withdrawal
        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success, "Transfer failed");
        emit Log(address(this), address(this).balance); // Log after withdrawal
    }

    function getBalance() public view returns(uint256){
        return address(this).balance;
    }

}

