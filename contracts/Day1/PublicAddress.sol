// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

contract PublicAddress {

    // this lessson is about the introduction to addresses and learning their context in solidity
    /// why they exist and in what context are they used in with examples

    // an address is a 20-byte value that represents the location of a contract or an externally owned account (EOA) on the Ethereum blockchain
    /// the most commont example would be a compiled contract that is deployed on blockchain and the only way to reference the contract is 
    /// to specifiy the cointract address...
    // you can declare a public address variable like this:
    address public myAddress = 0x1234567890123456789012345678901234567890; // this is a sample address, and you can replace it with any valid Ethereum address

    /// you can also have payable addresses that can receive Ether, for example:
    address payable public myPayableAddress = payable(0x1234567890123456789012345678901234567890); // this is a sample address, and you can replace it with any valid Ethereum address that can receive Ether
    
    /// and then you can use the transfer() function to send Ether to that address, for example:

    function sendEther() public {
        (bool success, ) = myPayableAddress.call{value: 1 ether}("");
        require(success, "Transfer failed");
    }

    // the ability to pay contracts is handles by etherium you just have to call the functions can send and recieve ether and the blockchain will handle the rest, 
    /// and you can also use the send() function to send Ether, but it is not recommended because it does not throw an error if the transfer fails, and it returns a
    // boolean value indicating whether the transfer was successful or not, for example:
    function sendEtherUsingSend() public {
        (bool success, ) = myPayableAddress.call{value: 1 ether}(""); // this will attempt to send 1 Ether to the myPayableAddress, and it will return true if the transfer was successful, and false if it failed
        require(success, "Transfer failed"); // this will throw an error if the transfer failed
    }

    // you generally use addresses to interact with other contracts, for example you can call a function on another contract by specifying its address 
    ///and the function you want to call, and you can also send Ether to another contract by specifying its address and the amount of Ether you want to send

    // so really when we talk address we are talking full contratcs, deployed contracts not the contract you are developing but other contracts that are already deployed on
    ///  the blockchain and you want to interact with them, and the only way to reference those contracts is by their address, and then you can call their functions or send 
    /// them Ether using their address

    //// so to summerize the type of addresses 
    /// you have regular addresses that can be used to reference contracts or EOAs,
    /// and you have payable addresses that can receive Ether, 
    /// --- and you can use the transfer() function to send Ether to a payable address,
    /// --- and you can also use the send() function to send Ether, 
    /// but it is not recommended because it does not throw an error if the transfer fails, and it returns a boolean value indicating whether the transfer was successful or not

    // for context you may be wanting to develop a contract that interacts with another contract that is already deployed on the blockchain, 
    /// and the only way to reference that contract is by its address, and then you can call its functions or send it Ether using its address
    /// and those kinds of contracts are usually called "external contracts" because they are external to the contract you are developing, 
    /// and you can interact with them using their address


    /// so here is a simple contract that demonstrates how to interact with an external contract using its address, and how to send Ether to a payable
    ///  address, and how to use the send() function to send Ether, and how to handle the success or failure of the transfer using require() function 
     
    // example 
    // contract ExternalContract {
    //     function someFunction() public pure returns (string memory) {
    //         return "Hello from External Contract!";
    //     }
    // }    

    // with atual code for a live example 
    // contract UseAddress{
    //     address public externalContractAddress = 0x1234567890123456789012345678901234567890; // this is a sample address, and you can replace it with the actual address of the external contract you want to interact with
    //     address myPayableAddress = 0x1234567890123456789012345678901234567890; // this is a sample address, and you can replace it with the actual address of the external contract's payable address    

    
    //     function callExternalContract() public view returns (string memory) {
    //         ExternalContract externalContract = ExternalContract(externalContractAddress); // this will create an instance of the external contract using its address
    //         return externalContract.someFunction(); // this will call the someFunction() on the external contract and return its result
    //     }


    //     function sendEtherToExternalContract() public {
    //         myPayableAddress.transfer(1 ether); // this will send 1 Ether to the external contract's payable address which is the same as myPayableAddress in this example
    //     }


    //     function sendEtherUsingSendToExternalContract() public {
    //         bool success = myPayableAddress.send(1 ether); // this will attempt to send 1 Ether to the external contract's payable address, and it will return true if the transfer was successful, and false if it failed
    //         require(success, "Transfer failed"); // this will throw an error if the transfer failed
    //     }
    // }


    // so this has been an introduction to addresses in Solidity, how to declare them, use them, and interact with external contracts using their addresses, and how to send Ether to payable addresses, and how to handle the success or failure of the transfer using require() function

    // so in normal programming itwould be like calling other packages or libraries, but in solidity you are calling other contracts that are already deployed on the blockchain,
    // and the only way to reference those contracts is by their address, and then you can call their functions or send them Ether using their address.


}