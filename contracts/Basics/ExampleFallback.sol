//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleFallback {

    uint public lastValueSent; 
    string public lastFunctionCalled;

    // if no call data - default is recieve
    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "recieve";
    }

    // fallback without payable - auto run when no value passed and no other function matches
    // fallback with payable - function able to recieve value
    fallback() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }

}