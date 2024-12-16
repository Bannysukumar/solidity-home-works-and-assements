// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;
// contract even or odd
contract EvenorOdd{
// even or odd function in uint
    function evenorodd (uint number) public pure returns(string memory){
        if (number % 2== 0) { //condition for even or odd
            return "even";//returning a true value
        }else{
            return "odd"; // returning a flase value
        }
    }
// even or odd function in int
    function intevenorodd (int number) public pure returns (string memory){
        if (number % 20 == 0) { //condition for even or odd
            return "even"; //retuning a true value
        } else {
            return "odd";//returning a flase value
        }
    }
}
