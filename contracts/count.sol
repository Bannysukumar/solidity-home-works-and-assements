// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract count{
    uint count;
    function counter() external {
        count = count + 1;
    }
}
interface Icounter {
    function count() external view returns (uint);
    function counter() external ;
}
 contract cont{
    function counter1(address _counter) external {
        Icounter(_counter).counter();
    }
    function getcount(address _counter) external view returns (uint){
        return Icounter(_counter).count();
    }
 }