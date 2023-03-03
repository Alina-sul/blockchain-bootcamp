//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleBoolean {

    bool public myBool; // default value is false

    function setMyBool(bool _myBool) public {
        myBool = _myBool; // value is false/true, 0/1 are not working
    }

}