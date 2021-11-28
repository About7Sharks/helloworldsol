// This contract allows a group to tell a story onchain
pragma solidity ^0.8.0;

contract Story {
    // Create an empty string array named story
    string[] story;

    // On inital contract creation push some words to story
    constructor(){
        story.push("There");
        story.push("once");
    }

    // Add a word to the end of the story array
    function addWord(string memory word) public {
        story.push(word);
    }

    // Chance a word in the story array
    function editWord(string memory word, uint place) public {
        story[place]=word;
    }

    // Return all the words in the story array
    function read() public view returns (string[] memory) {
        return story;
    }
}
