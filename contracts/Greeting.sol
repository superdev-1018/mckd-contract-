// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

// storage - variable is a state variable (store on blockchain) DEFAULT - implicitly set
// memory - variable is in memory and it exists while a function is being called - each time we call a string we must also indicate memory 
// calldata - special data location that contains function arguments

contract Greeting {
    /* visible to everyone */
    string public name;
    string public greetingPrefix = "Hello ";

    constructor(string memory initialName) {
        name = initialName;
    }

    function setName(string memory newName) public {
        name = newName;
    }
     
     // VIEW only reads data from the blockchain and will not modify or destroy. Similar to PURE which does not modify or destroy data, but PURE does not provide read access either. 
    function getGreeting() public view returns (string memory) {

        // Concatination in Solidity cannot be done the usual way, ex. ()'hello  + varNmae"  + yaddaYadda') we will have to use helpers. 
        return string (abi.encodePacked(greetingPrefix, name));
    }
}