// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract enumstatus{
    enum Status{
        Accepted,
        Shipped
    }
    Status public status;
    function input(Status _status) public {
        status = _status;
    }
    function get() public view returns  (Status){
        return status;
    }
    
}