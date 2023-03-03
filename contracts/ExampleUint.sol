//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleUint {

    uint public myUint; // default value is 0
    // uint === uint256

    function setMyUint(uint _myUint) public {
        myUint = _myUint; // range 0 - (2^256)-1 
    }

}