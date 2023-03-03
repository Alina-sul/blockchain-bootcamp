//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleString {

    string public myString = "Hello World"; // arrays of bytes
    // expensive to store
    // almost no libraries dealing with strings

    bytes public myBytes = "Hello World";

    // can convert bytes to string but not the other way around

    function setMyString(string memory _myString) public { // memory is temporary
        myString = _myString; 
    }

    function compareTwoStrings(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString)); // can compare only hashes of the strings
    }

}