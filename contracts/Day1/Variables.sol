// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Variables {
    // state variables define the state of the contract and are stored on the blockchain
    // you initialise them when you declare them or in the constructor
    /// when you want to change the value of a state variable, you need to write a function
    /// that modifies it
    // state variables are public by default, but you can also make them private or internal

    /// in OOP think of state variables as properties of a class,
    /// and functions as methods that operate on those properties

    // if you define a variable called age  you cant say 'print(age)' in the console,
    /// you need to write a function that returns the value of age and you can only see 
    /// the value of age by calling that function
    // initially you have these types of variables: uint, int, bool, address, string, 
    /// bytes, arrays, structs

    /// and access to variables is determined by their visibility 
    /// (public, private, internal, external)

    //1.
    string public name = "Alice";
    uint public age = 30;
    bool public isMale = false;

    // state variables can be of any type, including arrays and structs




    // local variables exit in functions and are not stored on the blockchain
    function calculateSum(uint a, uint b) public pure returns (uint) {
        uint sum = a + b; // local variable
        return sum;
    }
}