// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract zerototen{
    function ZerotoTen () public pure returns (uint256[] memory, uint256){
        uint256;
        uint256 sum = 0;
        for (uint a = 0; a < 10; a ++) 
        {
            numbers [a] = a + 1;
            sum += numbers[a];
        }
        return (numbers, sum);
    }
}
