// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract asss{
    bool public result;

    function asse(uint num, uint num2) public {
        uint sum = num + num2;
        assert(sum<=400);
        result = true;
    }
    function results() public view returns (string memory){
        if (result == true) {
            return "this found is exits";
        } else {
            return "this found has been not exits";
        }
    }
}