// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {OutsideContractError, sumLib} from "Test.sol";

contract ImportContract{

    function testSumLib(uint256 x, uint256 y) pure public returns(uint256){
        return sumLib(x, y);
    }

    function testOutsideError() view public{
        if(msg.sender != address(0)){
            revert OutsideContractError(msg.sender, 0);
        }
    }

}
