// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExamGrading {
    address public teacher;
    mapping(address => uint256) public pupilScores;

    constructor() {
        teacher = msg.sender;
    }

    function submitScore(address pupil, uint256 score) public {
        // Use require() for validation checks
        require(msg.sender == teacher, "Only the teacher can submit scores");

        // Use assert() to ensure a specific condition
        assert(score >= 0 && score <= 100);

        // Use revert() for exceptional cases
        if (pupilScores[pupil] > 0) {
            revert("Score already submitted for the pupil");
        }

        pupilScores[pupil] = score;
    }
}

