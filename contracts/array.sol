// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract array{
    uint[] public array;
    uint[] public array2 = [1,2,3,4];
    uint[40] public array4;
    function ar() public view returns (uint[] memory){
        return array;
    }
    function get(uint a) view public returns (uint){
        return array[a];
    }
    function push(uint a) public {
        array.push(a);
    }
    function pop() public {
        array.pop();
    }
    function length() public view returns (uint){
        return array.length;
    }
}