// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract paya{
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }
    function deposite() public payable {}

    function withdraw() public {

    }
    function nonpayable () public {

    }
}