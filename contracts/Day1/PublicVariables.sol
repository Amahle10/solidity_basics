// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PublicVariables {

    // This lesson is about public variables, how to declare them, use them,
    // access them, and update their values or how to update the state of a contract using
    // public variables and functions that modify them


    // public variables are state variables that can be accessed from outside the contract
    // and state variable are variables that are stored on the blockchain and define the state of the contract
    // you also have local variables that exist in functions and are not stored on the blockchain and are not part of the state of the contract
    // so for --state-- you have state variables, and for --local-- you have local variables that exist 
    // in functions and are not stored on the blockchain
    // its like global variables and local variables in programming languages, but in solidity
    // you have state variables and local variables, and state variables are stored on the blockchain and define
    // the state of the contract, while local variables exist only in functions and are not stored on the blockchain


    /// so that is state variables with (public, private, internal, external) visibility and
    /// local variables that exist in functions and are not stored on the blockchain, and the difference between
    /// them is that state variables are stored on the blockchain and define the state of the contract,
    /// while local variables exist only in functions and are not stored on the blockchain and have 
    // (public, private, internal, external) visibility as well but they are not stored on the blockchain
    /// and are not part of the state of the contract
    // the difference between public and private variables is that public variables can be accessed from outside the contract, while private variables can only be accessed from within the contract
    // and the difference between state variables and local variables is that state variables are stored on the blockchain and define the state of the contract, while local variables exist only in functions and are not stored on the blockchain
    // they are automatically given a getter function that allows you to read their value
    // but you cannot modify their value directly, you need to write a function that modifies it

    // when you declare a public variable, the compiler automatically creates a getter function for it
    // this means that you can read the value of the variable from outside the contract without writing any additional code


    string public name = "Alice";
    uint public age = 30;
    bool public isMale = false;

    // those are simple and common variables 
    /// solidity has many other types of variables, including arrays, structs, mappings, and more complex data structures
    /// that you can use to store and manage data in your contracts
    // for example you can have an array of strings to store a list of names, or a struct to store a person's information, or a mapping to store key-value pairs

    // array of strings to store a list of names
    /// you typically use arrays to store a list of items, for example you can have an array of strings to store a
    /// list of names, or an array of uints to store a list of ages, or an array of structs to store a list of people
    /// and to add values to an array, you can use the push() function, for example names.push("Alice") to 
    /// add "Alice" to the names array, and then you can access the names in the array using their index,
    /// for example names[0] to access the first name in the array which is "Alice"
    /// but you cannot modify the value of an element in the array directly, you need to write a function that modifies it, for example
    /// function updateName(uint index, string memory newName) public {
    ///     names[index] = newName; // this will update the name at the specified index in the names array to the new name provided
    /// }
    string[] public names; /// like a list of names that you can add to and access by index,
    /// but you cannot modify the value of an element in the array directly, you need to write a function that modifies it

    

    // struct to store a person's information
                /// you typically use structs to group related data together,
                /// for example you can have a struct called Person that has properties like name, age, and isMale
                // so basically its like a mini object that can hold multiple properties, and you can create instances
                // of that struct to represent different people
                /// for example how to create intances of the Person struct, 
                ///you can have a function that creates a new person and adds it to an array of people, or you can have a mapping that maps an address to a person's information
                /// the code goes something like this:
                ///  function createPerson(string memory _name, uint _age, bool _isMale) public {
                //    Person memory newPerson = Person({
                ///        name: _name,
                ///        age: _age,
                ///        isMale: _isMale
                ///    });
                ///    people.push(newPerson); // like person.createPerson("Alice", 30, false)
                ///    and then you can access the person's information using people[0].name, people[0].age, people[0].isMale
                /// }
                /// like a java class with properties and methods, but in solidity you have structs with properties
                /// and functions that operate on those properties but really its an object that you can access by its index
                /// 
    struct Person {
        string name;
        uint age;
        bool isMale;
    } /// like a java object with properties, but in solidity you have structs with properties and
    /// functions that operate on those properties but really its an object that you can access by its index


    // mapping to store key-value pairs
    mapping(address => uint) public balances;  /// like a dictionary that maps an address to a uint value, for example you can use it to store the balance of each address, and you can access the balance of an address using balances[address], but you cannot modify the value of a mapping directly, you need to write a function that modifies it, for example
    /// function updateBalance(address _address, uint _balance) public {
    ///     balances[_address] = _balance; // this will update the balance of the specified address to the new balance provided
    /// }

    // now to update the value or to add values to these variables, you need to write functions that modify them

    // but for now we are only focusing on how to declare public variables not how to modify them, so we will cover that in the next lesson when we talk about functions and how to modify the state of a contract using functions that modify public variables

}





