// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fixedArray{
    uint[5] public arr;
    int size=int(arr.length);

    function insertElements(int _ind ,uint _data) public {
        require(_ind>=0 && _ind < size,"Index out of bound");
        arr[uint(_ind)]=_data;
    }

    function getArray() public view returns (uint[5] memory){
        return arr;
    }


}

contract dynamicArray{
    uint [] public arr;

    function addElement(uint _value) public{
        arr.push(_value);
    }

    function getArray() public view returns(uint[] memory){
        return arr;
    }

    function removeLastEle() public{
        arr.pop();
    }
}