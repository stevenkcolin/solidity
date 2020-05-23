// "SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.4.21 <0.7.0;

contract Migrations {
  address public owner;
  uint public last_completed_migration;
  int public thirdAngle;

  constructor() public {
    owner = msg.sender;
    thirdAngle = 180;
  }

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function setThirdAngle(int a, int b) public {
    thirdAngle = 180 - a - b;
  }

  function getThirdAngle() public view returns (int) {
    return thirdAngle;
  }
}
