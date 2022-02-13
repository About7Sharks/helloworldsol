// This contract allows a location to rend rooms and issue keys to their user
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./whitelist.sol";

contract HotelManager is Whitelist {
    struct Book {
        uint256 RoomNumber;
        address Guest;
        uint256 Duration;
    }
    mapping(address => Book) public stays;

    string HotelName;
    uint openRooms;
    uint allRooms;

    // On inital contract creation set state
    constructor() {
        HotelName = "Sockastle";
        allRooms = 50;
        openRooms=allRooms;
    }

    function addGuest(address _wallet,uint roomNumber) public payable returns (uint256 ) {
       // Require there to be moree open rooms
        require(openRooms>=allRooms,'There are no rooms avaliable');
        // Make sure the user isnt already a guest
        require(!isWhitelisted(_wallet),'You are already a guest');
        // Create a stay
        stays[_wallet]=Book(roomNumber, _wallet, 1);
        // Add the wallet to the whitelist check
        addWallet(_wallet);
        // Return the duration of the stay
        return stays[_wallet].Duration;
    }

}
