pragma solidity ^0.8.17;


contract ERC20Token {
    // ...

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        Transfer(msg.sender, _to, _value);

        return true;
    }

    
    // The function exists.
    // It accepts the correct arguments.
    // It fails if the user doesn't have enough tokens to transfer, i.e., an insufficient balance.
    // It transfers the balance from the sender's account to the receiver's account.
    // It triggers a sell event.
    // It returns the correct value, e.g., true.
		// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
}
