// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Basics, input, sandwich

contract Samplecontract {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier WhenNotPaused() {
        require(!paused, "paused");
        _; // memans execute the rest of the code
    }
    modifier gap(uint256 _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function increase() external WhenNotPaused {
        count += 1;
    }

    function decrease() external WhenNotPaused {
        count -= 1;
    }

    // function incBy(uint x) external WhenNotPaused gap {
    //     count += x;
    // }
    modifier sandwichType() {
        // code here
        count += 10;
        _;
        // more code here
        count *= 2;
    }

    function foo() external {
        count += 1;
    }
    // when fxn foo is called, it first executes function modifier
}
