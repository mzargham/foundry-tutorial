// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract Contract {

    // amount of ether you deposited is saved in balances
    mapping(address => uint) public balances;
    // when you can withdraw is saved in lockTime
    mapping(address => uint) public lockTime;

    function deposit() external payable {

        //update balance
        balances[msg.sender] +=msg.value;

        //updates locktime 1 week from now
        lockTime[msg.sender] = block.timestamp + 1 weeks;

    }

}

