pragma solidity ^0.4.22;

contract ThirdAngle {
  int third;
  function otherAngle(int angle1, int angle2) {
    // TODO your code here
    int a1 = angle1;
    int a2 = angle2;
    // aaaa
    third = 180 - a1 - a2;
  }
  function getThird() constant returns (int) {
      return third;
  }
}
