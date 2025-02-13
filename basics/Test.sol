// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

error OutsideContractError (address sender,  uint256 senderValue);

function sumLib(uint x, uint y) pure returns(uint256){
    return x + y;
}

contract Test {

    event Log(address indexed senderAddress, uint256 senderValue);
    
    function testUnderflow() public pure returns (uint){
        uint x = 0;
        x--;
        return x; 
    }

    function testUncheckedUnderflow() public pure returns (uint){
        uint x = 0;
        unchecked{x--;}
        return x; 
    }

    function testError() public payable {
        if(msg.sender == address(0)){
            revert OutsideContractError(msg.sender, msg.value);
        }else{
            emit Log(msg.sender, sumLib(msg.value, 100));
        }
    }
}
