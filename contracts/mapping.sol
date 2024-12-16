// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract map {
    mapping (address => uint) public  mapp;

    function set(address _addr, uint _a) public{
        mapp[_addr]=_a ;
    }
    function get(address _addr) view public returns (uint){
        return mapp[_addr];
    }
    function remove(address _addr) public {
        delete mapp[_addr];
    }
}