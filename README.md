## EVM Based blockchain guide

EVM (Ethereum virtual machine) has quickly grown in popularity, not only with the growth of ethereum but also due to how the majority of ethereums competerators support this virtual machine aswell. Meaning if you can write a contract and it runs on ethereum it will also run on a chain like Polygon, FTM, BSC, AVAX, etc...

`./helloWorld.sol`
The first contract we will be creating is a very basic contract that will simply store the message data when written to and will returned when a user calls it. Each time it is called it will also increment the internal state by 1. 

> It only costs gas when you want to make changes (write) to a blockchain. 


`./goodMorning.sol`
If you don't say GM to everyone your are an evil person and probally ngmi. This contract first requires a person to send it a gm message where it will then be stored into a mapping of address that have interacted with the contract within the last day. 