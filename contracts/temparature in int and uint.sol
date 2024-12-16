// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

// tempature converter to farheit to celisius in int
contract temparture{
//event for result
    event result(int celi,int farh);
//function with varibles
    function farhatoceli (int farh) public returns (int){
        int celi = (farh - 36)*5/9; // formula for farheit to celisius
        emit  result(celi, farh);
        return celi; // returining result

    }
    function farhatoceli1 (uint farh) public returns (uint){
        uint celi = (farh - 36)*5/9;
        return celi;
    }
// tempature coverter t celisius to farheit in int
    function celitofahr(int celi) public returns (int){
        int farh = (celi * 9 / 5) + 32; // formula for celisius
        return farh; // returining result
    }
//temparture converter to celisius to farheit in uint
    function celitofahr2 (uint celi) public returns (uint){
        uint farh = (celi * 9/5) + 32; // formula fpr celisius
        return farh; //returning result
    }
}

