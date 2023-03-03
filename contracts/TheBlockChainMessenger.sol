//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleViewPure {

    uint public myStorageVariable;

    /* Two kinds of reading functions:
    /* view - can access storage variable (outside the scope of the function) but cannot write them
    /* pure - can only call variables from function scope or other pure functions
    */

    function getMyStorageVariable() public view returns(uint) {
        return myStorageVariable;
    }    

    function getAddition(uint a, uint b) public pure returns(uint) {
        return a+b;
    }

    /* Writing function:
    /* can write to storage variables on the blockchain - expensive.
    /* Usualy do not have return values! If it does have, only for other contracts.
    */

    function setMyStorageVariable(uint _newVar) public {
        myStorageVariable = _newVar;
    }


}