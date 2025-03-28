// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HelloWorld{
    string public message;

    constructor(){
        message = "Hello, web3 Projects!";
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns(string memory){
        return message;
    }
}