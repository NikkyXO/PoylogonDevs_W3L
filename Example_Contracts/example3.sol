// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

// errors: require, revert, assert
// above errors result in gas refunds and reverted state variable
// Custom error usually prefered, it saves gas

contract Error {
    function testRequire(uint256 y) public view {
        // require
    }
}
