// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;
// create a twitter contract
// create a mapping between user and tweet
// Add function to create a tweet and save it in mappping
//create a function to get tweet
// Define a Tweet struct with author, content, timestamp, likes
// Add the struct to array
contract Twitter{

struct Tweet{
    address author;
    string content;
    uint timestamp;
    uint likes;

}
  mapping (address =>Tweet[] ) public tweet;
  
  function createTweet(string memory _tweet) public {

Tweet memory newTweet = Tweet ({
    author: msg.sender,
    content: _tweet,
    timestamp: block.timestamp,
    likes: 0
  });

    tweet[msg.sender].push(newTweet);
  }
  function getTweet(address _owner, uint _i) public view returns (Tweet memory){

     return tweet [_owner][_i];
  }
   function getAllTweets(address _owner) public view returns (Tweet[] memory){
    return tweet[_owner];
   }
}