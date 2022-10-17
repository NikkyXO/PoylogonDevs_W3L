//SPDX-License-Identifier: Apache;
pragma solidity ^0.5.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Capped.sol';

contract Mytoken is ERC20, ERC20Detailed, ERC20Burnable, ERC20Mintable, ERC20Capped {
    constructor() ERC20Detailed("Mytoken", "OOO", 18) ERC20Capped(1,000000);

    mint(0x05da816849a2D0d68BE844d6ea902d43e8c875EC, 1000);
}
