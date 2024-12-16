// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract coffie{
    struct form{
        string name;
        string messege;
        uint timestamp;
        address from;
        bool canceled;
    }
    form[] menus;
    address payable owner;
    mapping(address => uint) public userOrderIndex;
    constructor(){
        owner = payable(msg.sender);
    }
    function buychai(string calldata name, string calldata messege) external payable {
        require(msg.value>10, "please send mimum 10 eth");
        owner.transfer(msg.value);
        menus.push(form(name,messege,block.timestamp,msg.sender,false));
        userOrderIndex[msg.sender] = menus.length - 1;
    }
    function getmenu() public view returns (form[] memory){
        return menus;
    }
    function getbalance() public view returns (uint){
        return address(this).balance;
    }
   function cancle() public {
        uint orderIndex = userOrderIndex[msg.sender];

        
        require(orderIndex < menus.length, "No order found.");
        form storage order = menus[orderIndex];
        require(!order.canceled, "Order already canceled.");
        require(order.from == msg.sender, "You can only cancel your own order.");
        
        // Refund the user
        uint amountToRefund = 100 ether; 

        // Ensure enough balance to refund the user
        require(address(this).balance >= amountToRefund, "Insufficient contract balance to refund.");

        // Mark the order as canceled
        order.canceled = true;

        // Refund the amount to the buyer
        payable(msg.sender).transfer(amountToRefund);
    }
}