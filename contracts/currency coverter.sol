// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;
// inr to usdt 1 usdt is 84 ruppes in india ruppes
contract converter{
    uint constant DECIMALS = 1000; // decima value
    uint public b;
    uint constant value = 84861; // today exachange value or rate
    function currency(uint _a) public {
        b = (_a * value) / DECIMALS; //this is the formula for correcy covenction
    }
    function convert() view public returns (uint){
        return b; // retuning a value of converted currency
    }
}
//inr to usdt
contract converter1{
    uint public b;
    uint constant value = 800; 
    uint constant DECIMALS = 1000;
    function usdt(uint _c) public {
        b = (_c * value) / DECIMALS; // this formula not showing decimal number or points
    }
    function convert() view public returns (uint){
        return b;
    }
}
