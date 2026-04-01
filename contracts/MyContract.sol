pragma solidity ^0.8.0; 

contract MyContract {
    uint public count;

    function increment() public {
        count += 1;
    }
}