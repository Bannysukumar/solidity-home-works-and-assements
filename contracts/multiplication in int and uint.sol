// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract multipicatiuon {

// first day home work 


// int variables with values
// iam creating a four variables with values and store in fith varible in int
int a = 200;
int b = 400;
int c = 200;
int d = 800;
int z;
// uint variabes with values
// iam creating a four varibles with values and store in fith varible in uint
uint e = 100;
uint f = 700;
uint g = 300;
uint h = 200;
uint y;

function addition () view public  returns (int){
    int abcd = a+b;
    return abcd;
}
function subcration () view public returns (int){
    int sub = a-b;
     return sub;

}
function multiplication () view public returns (int){
    int multi = a*b;
    return multi;
}
function division () view public returns (int) {
    int divi = a/b;
    return divi;
}
function percentage () view public returns (int) {
    int perc = a%b;
    return perc;
}
function addition1 () view public  returns (uint){
    uint add = h+e;
    return add;
}
function subcration1 () view public returns (uint){
    uint sub1 = f-g;
    return sub1;
}
function multiplication1 () view public returns (uint){
    uint multi1 = f*g;
    return multi1;
}
function division1 () view public returns (uint){
    uint divi1 = e/h;
    return divi1;
}
function percentage1 () view public returns (uint){
    uint perc1 = e%h;
    return perc1;
}
// four values store in fith varible
function adding () view public returns (int) {
    int z = a+b-c*d;
    return z;
}
// four values store in fith variable
function subting () view public returns (uint){
    uint y = e+f+g*h;
    return y;
}
}