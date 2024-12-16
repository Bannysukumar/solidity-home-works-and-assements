// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract wallet{
    address payable public owner;
    constructor(){
        owner = payable(msg.sender);
    }
    receive() external payable { }

    function withdraw(uint _amount) external{
        require(msg.sender == owner, "caler is not owner");
        payable(msg.sender).transfer(_amount);
    }
    function getbalance() external view returns (uint){
        return address(this).balance;
    }
    function sender(uint _address) external {
        require(msg.sender == owner, "you are not owner");
         payable(msg.sender).transfer(_address);
    }
    }