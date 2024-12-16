// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract requ{
    function requ1(uint _i) public pure {
        require(_i>10, "input must greater than 10");
    }
    function reve(uint _i) public pure{
        if (_i <= 10) {
            revert("input must be less than 10");
        }
    }
}