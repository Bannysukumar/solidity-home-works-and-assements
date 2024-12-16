// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract readandwrite{
    uint public number;
    int public number1;
    function ReadandWrite(uint _num) public {
        number = _num;
    }
    function get(uint) view public returns (uint){
        return number;
    }
    function set(int _num2) public {
        number1 = _num2;
    }
    function get2(int) view public returns (int){
        return number1;
    }
}