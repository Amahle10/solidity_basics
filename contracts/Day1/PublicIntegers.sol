// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PublicIntegers {

    /// this lesson is about public integers, how to declare them, use them, access them, and update their values or how to update the state of a contract using public integers
    /// and functions that modify them

    // integer is a data type that can store whole numbers, and it can be either signed or unsigned
    // you can declare a public unsigned integer variable like this:
    uint public myUnsignedInteger = 100;

    // you can also declare a public signed integer variable like this:
    int public mySignedInteger = -100;

    // when you declare a public integer variable, the compiler automatically creates a getter function for it meaning you dont have to write a function to read the value of the
    // variable, you can simply call the variable name to get its value, for example myUnsignedInteger() will return 100, and mySignedInteger() will return -100
    // this means that you can read the value of the variable from outside the contract without writing any additional code

    // to update the value of the integer variable, you need to write a function that modifies it
    function updateUnsignedInteger(uint newUnsignedInteger) public {
        myUnsignedInteger = newUnsignedInteger;
    }

    function updateSignedInteger(int newSignedInteger) public {
        mySignedInteger = newSignedInteger;
    }

    /// you also have different types of integers that can store different ranges of values, for example uint8 can store values from 0 to 255, uint16 can store values from 0 
    /// to 65535, and so on, and int8 can store values from -128 to 127, int16 can store values from -32768 to 32767, and so on, and you can choose the appropriate type of
    /// integer based on the range of values you need to store in your contract

    /// you can also perform different operations on integers, such as addition, subtraction, multiplication, division, and modulus, and you can also use comparison operators
    /// to compare integers, such as ==, !=, <, >, <=, >=
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    
    function subtract(uint a, uint b) public pure returns (uint) {
        return a - b;
    }
    
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    function divide(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }

    function modulus(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Cannot divide by zero");
        return a % b;
    }

    /// so this has been integer manipulation in Solidity, how to declare public integer variables, how to update them using functions, and how to perform different operations on integers
    /// such as addition, subtraction, multiplication, division, modulus, and comparison

    



}