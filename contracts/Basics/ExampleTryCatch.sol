//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract WillThrow {

    function aFunction() public pure {
        require(false, "Error message");
    }

}

contract ErrorHandling {
    
    event ErrorLogging(string reason);
    event ErrorLogCode(uint code);
    event ErrorLogBytes(bytes lowLevelData);

    function catchTheError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {

        } catch Error(string memory reason) {
            emit ErrorLogging(reason);
        } catch Panic(uint errorCode) {
            // catch assert error
            emit ErrorLogCode(errorCode);
        } catch(bytes memory lowLevelData) {
            // custom error
            emit ErrorLogBytes(lowLevelData);
        }
    }

}