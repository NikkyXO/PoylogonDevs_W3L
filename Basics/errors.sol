// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;
/// Not enough funds for transfer. Requested `requested`,
/// but only `available` available.
error NotEnoughFunds(uint requested, uint available);
contract Token {
    mapping(address => uint) balances;

    function transfer(address to, uint amount) public {
        uint balance = balances[msg.sender];
        if (balance < amount)
            revert NotEnoughFunds(amount, balance);
        balances[msg.sender] -= amount;
        balances[to] += amount;
// ...
    }
}

//Errors allow you to define descriptive names and data for failure situations.
// Errors can be used in revert statements.
// In comparison to string descriptions, errors are much cheaper 
// and allow you to encode additional data
