// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract coin {
    // public makes accessible from other contracts
    address public minter;
    mapping(address => uint256) public balances;

    // events allow clients to react to specific contract changes you declare
    // Initializes event Sent:, To be used/emitted later
    event Sent(address from, address to, uint256 amount);

    constructor() {
        minter = msg.sender;
    }

    // sends an amount of newly created coins to an address
    // Can only be called by contract creator
    function mint(address receiver, uint256 amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    // errors allow you to provide information about why an operation failed
    // they are returned to tge caller of the function
    // Initializes errot InsufficientBalance:,  To be used later
    error InsufficientBalance(uint256 requested, uint256 available);

    function sendCoins(address receiver, uint256 amount) public {
        if (amount > balances[msg.sender])
            revert InsufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        balances[msg.sender] -= amount;
        balances[receiver] -= amount;
        emit Sent(msg.sender, receiver, amount);
    }

    // Coin.Sent().watch({}, '', function(error, result) {
    //     if (!error) {
    //         console.log("Coin transfer: " + result.args.amount +
    //         " coins were sent from " + result.args.from + " to " + results.args.to + ".");

    //         console.log("Balances now:\n" +
    //             "Sender: " + Coin.balances.call(result.args.from) +
    //             "Receiver: " + Coin.balances.call(result.args.to));

    //     }
    // })
}
