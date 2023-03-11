//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Wallet {

    address sender;
    uint valueSent;

    function payContract() public payable {
        payment = new PaymentRecieved(msg.sender, msg.value);
    }
}

contract PaymentRecieved {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}

contract Wallet2 {

    struct PaymentRecievedStruct {
        address from;
        uint amount;
    }

    PaymentRecievedStruct public payment;

    function payContract() public payable {
        payment = PaymentRecievedStruct(msg.sender, msg.value);
        // also possible to write:
        // payment.from = msg.sender
    }

}

