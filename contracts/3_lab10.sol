/*
Structure (Lab - 9)
To complete this challenge, you have to create a structure USER in which you will create two fields -id(uint) and name(string). Then create a dynamic array of USER type to insert the name and id of a user.

i) insert() - To insert a user in the USER array. This function will take one argument name(string type).

ii)read(uint id) - This will return the user name and id.

iii)find(uint id ) - To find a user in the USER array based on the user id. If the user does not exist then revert with 'User does not exist!' .

Note - Initialize a counter by one and increment it every time when a new user is added to the array. This counter variable will be the id of the User Id.

You can do this :-)
*/





// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract demo {
    struct User{
        uint id;
        string name;
    }

    User[] public users;
    uint public userCount;
    
    function insert(string memory _name) public {
        uint _id = userCount+1;
        users.push(User(_id,_name));
        userCount++;
    }

     function read(uint _id) public view returns (uint, string memory) {
        for (uint i = 0; i < users.length; i++) {
            if (users[i].id == _id) {
                return (users[i].id, users[i].name);
            }
        }
        revert("User does not exist!");
    }


    function find(uint _id) public view returns (string memory) {
        for (uint i = 0; i < users.length; i++) {
            if (users[i].id == _id) {
                return users[i].name;
            }
        }
        revert("User does not exist!");
    }
}

