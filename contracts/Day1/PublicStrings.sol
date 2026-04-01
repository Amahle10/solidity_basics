// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PublicStrings {
    // this lesson is about public strings, how to declare them, use them, access them, and update their values or how to update the state of a contract using public strings and functions that modify them

    // string is a data type that can store a sequence of characters, and it is used to represent text in Solidity
    // you can declare a public string variable like this:
    string public myString = "Hello, World!";

    // when you declare a public string variable, the compiler automatically creates a getter function for it
    // this means that you can read the value of the variable from outside the contract without writing any additional code

    // to update the value of the string variable, you need to write a function that modifies it
    function updateString(string memory newString) public {
        myString = newString;
    }

    string public myString2 = "Hello, Solidity!";

    function updateString2(string memory newString) public {
        myString2 = newString;
    }

    // different ways of interacting with strings in Solidity, for example you can concatenate two strings using the abi.encodePacked() function, for example:
    function concatenateStrings(string memory string1, string memory string2) public pure returns (string memory) {
        return string(abi.encodePacked(string1, string2));
    }

    // you can also compare two strings using the keccak256() function, for example:
    function compareStrings(string memory string1, string memory string2) public pure returns (bool) {
        return keccak256(abi.encodePacked(string1)) == keccak256(abi.encodePacked(string2));
    }

    // you can also get the length of a string using the bytes() function, for example:
    function getStringLength(string memory myString) public pure returns (uint) {
        return bytes(myString).length;
    }

    // you can also convert a string to bytes and vice versa using the bytes() and string() functions, for example:
    function stringToBytes(string memory myString) public pure returns (bytes memory) {
        return bytes(myString);
    }

    // you can also convert bytes to a string using the string() function, for example:
    function bytesToString(bytes memory myBytes) public pure returns (string memory) {
        return string(myBytes);
    }

    /// those are some of the basic operations you can perform with strings in Solidity, and there are many other functions and libraries available for working with strings,
    /// such as the Strings library from OpenZeppelin that provides additional string manipulation functions

    /// so this has been string manipulation in Solidity, how to declare public string variables, how to update them using functions, and how to perform different operations on strings
    /// such as concatenation, comparison, and length calculation

    /// strings are a fundamental data type in Solidity and are used in many different applications, such as storing user input, displaying messages, and interacting with other
    /// contracts, so it is important to understand how to work with strings effectively in your Solidity contracts

    /// we also have string 

}