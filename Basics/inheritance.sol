//SPDX-License-Identifier: MIT
// virtual / override/      virtual override/ override
// contract A is B

pragma solidity ^0.8.3;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "Afoo";
    }
    function bar() public pure virtual returns (string memory) {
        return "Abar";
    }
    function baz() public pure  returns (string memory) {
        return "Abaz";
    }
}

contract B is A {
    function foo() public pure override returns (string memory) {
        return "B";
    }
    function bar() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is B {
    function bar() public pure override returns (string memory) {
        return "C";
    }
}
