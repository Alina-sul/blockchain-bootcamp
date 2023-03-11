//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Send {

    receive() external payable {}

    function withdrawTransfer(address payable _to) public {
        // throw error when fails
        _to.transfer(10);
    }

    function withdrawSend(address payable _to) public {
        // sending boolean not error
        bool _isSent = _to.send(10);

        require(_isSent, "Sending the funds faild.")
    }

}

contract RecieveNoAction {

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    receive() external payable {}

}

contract RecieveAction {

    uint public balanceRecieved;

    receive() external payable {
        balanceRecieved += msg.value;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}