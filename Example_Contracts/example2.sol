// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint256 public StoredData;

    function setData(uint256 x) public {
        StoredData = x;
    }

    function getData() public view returns (uint256) {
        return StoredData;
    }
}
