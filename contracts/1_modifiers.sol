// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract demoModifier{
    uint256 public a;

    constructor(uint _value){
        a=_value;
    }

    modifier inRange(uint256 _value, uint256 _minval, uint256 _maxval){
        require(_value>=_minval && _value<=_maxval, "the value is out of bound");
        _;

    }

    function doSomething(uint256 _value) public inRange(_value, 10, 100) returns (uint256) {
        a=_value;
        return a;

    }
}