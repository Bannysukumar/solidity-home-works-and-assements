// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract statevariable{
    string public text;
    uint public num;

    string public text1 = "jhgcsjdgfsjg";
    uint public nummm = 22322;
    constructor (string memory _text, uint _num) public {
        text = _text;
        num = _num;
    }

    function state(string memory _text, uint _num) public {
        text = _text;
        num = _num;
    }

    bytes public  hefvwe = "ejhfjkfgjgjeh";

    uint[] public fgjwfegwejf;
}