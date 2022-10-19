//SPX-License-Idendtifier: MIT
pragma solidity ^0.8.3;

// Constructor allows a stae variable to be initialized
// its a function that is called  once when a contract is being deployed

contract example {
    address public owner;
    uint256 public x;

    constructor(uint256 _x) {
        owner = msg.sender;
        x = _x;
    }
}
