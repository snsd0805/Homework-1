// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool reg = false;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (reg) {
            return 123;
        } else {
            reg = true;
            return 1001;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if (IClassroomV2(msg.sender).isEnrolled()) {
            return 123;
        } else {
            return 1001;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        // return gasleft();
        if (gasleft() > 7000) {
            return 1001;
        } else {
            return 123;
        }
    }
}
