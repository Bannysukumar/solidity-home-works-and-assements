// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract a{
    string public name;
    constructor(string memory _name) {
       name = _name;
    }
}
contract c{
    string public text;
    constructor(string memory _text) {
        text = _text;
}
}
contract z is a("input to a"), c("input to c") {}

contract d is a,c{
    constructor(string memory _name, string memory _text) a(_name) c(_text) {}
}
contract f is a,c {
    constructor() a("ab is called") c("cd is called") {}

    }
    contract g is a,c{
        constructor() a("a is called") c("cis called") {}
    }