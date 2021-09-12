pragma solidity ^0.5.10;
contract HelloWorld {

   string public message; // Holds msg sent
   uint256 public msgCount;  // Holds contract count

   constructor(string memory initMessage) public {
      message = initMessage;
   }

   function update(string memory newMessage) public {
      message = newMessage; // Set message to the new message
      msgCount+=1; // Increment msgCount
    }
}