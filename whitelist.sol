// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract allows someone to maintain a list of address
contract Whitelist{
    mapping (address => bool) public Wallets;
    // Add the original contract deployer to whitelisted address
    constructor(){
        Wallets[msg.sender]=true;
    }
    // Adds a new wallet to list with access
    function addWallet(address _wallet) public {
        Wallets[_wallet]=true;
    }
    // Sets wallets access to false
    function removeWallet(address _wallet) public {
        Wallets[_wallet]=false;
    }
    // Check if the wallet is whitelisted
    function isWhitelisted(address _wallet) public view returns (bool) {
        return Wallets[_wallet];
    }
}