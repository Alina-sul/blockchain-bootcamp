//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleAddress {

    address public someAddress; // default is zero address

    function setSomeAddress(address _someAddress) public {
        someAddress = _someAddress;
    }

    function getAddressBalance() public view returns(uint) {
        return someAddress.balance; // 1 ETH = 10^18 wei
    }

}