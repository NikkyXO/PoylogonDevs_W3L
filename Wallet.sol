// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Assignment
// Build a wallet application that allows any user to
//store, send and deposit ether.
// Features:
// Custom Error Messages
// Use of events after key operations
// Hint: Contract should be able to receive
//  and use a modifier to enforce ownership
// Submission Link : https://forms.gle/g6yHZm7pwsmF811N6

contract EtherWallet {
    address payable public owner;
    error InsufficientBalance(uint256 requested, uint256 available);
    mapping(address => uint256) public balances;

    event MoneyTransferred(
        uint256 amount,
        uint256 balance,
        address payable Destaddress
    );
    event MoneyReceived(address ownerAdress, uint256 amount, uint256 balance);

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {
        emit MoneyReceived(msg.sender, msg.value, balances[msg.sender]);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Owner can withdraw");
        _;
    }

    function SendTransaction() external payable {
        balances[msg.sender] += msg.value;
        emit MoneyReceived(msg.sender, msg.value, balances[msg.sender]);
    }

    function Withdraw(uint256 amount) external onlyOwner {
        if (amount >= balances[msg.sender]) {
            revert InsufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
            // revert InsufficientBalance(amount, balances[msg.sender]);
        }
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit MoneyTransferred(
            amount,
            balances[msg.sender],
            payable(msg.sender)
        );
    }

    function getBalance() external view returns (uint256) {
        return balances[msg.sender];
    }
}
