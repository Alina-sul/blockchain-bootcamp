//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExamplePayableMod {

    string public myString = "Hello World";

    function updateString(string memory _newStr) public payable {
        if(msg.value == 1 ether) {
            myString = _newStr;
        } else {
            // transfer the value from the SC to the address
            payable(msg.sender).transfer(msg.value)
        }
    }




}