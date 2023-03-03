//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

/*
* The contract should:
* - store a string
* - be readeable to all but write access should be only to the one deploying the blockchain
* - count of message updates
*/

contract TheBlockChainMessenger {

    string public storageMessage = "Hello World!"; // init message
    address public owner;
    uint public messageUpdates; // counter

    constructor(){
        owner = msg.sender;
    }

    function getMessage() public view returns(string memory) {
        return storageMessage;
    } 

    function getUpdatesCount() public view returns(uint) {
        return messageUpdates;
    }

    function setMessage(string memory _newMessage) public {
        if(msg.sender == owner) {
            storageMessage = _newMessage;
            messageUpdates++;
        }
    }
 

}