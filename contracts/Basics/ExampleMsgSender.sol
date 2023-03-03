//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleMsgSender {

    address public someAddress; 

    function updateSomeAddress() public {
        someAddress = msg.sender;
        // *account* -> contract, then msg.sender = account address
        // accoumt -> *contract* -> contract, then msg.sender = address of last point of interaction with contract
    }

}