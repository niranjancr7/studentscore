# Exam Grading Smart Contract

## Overview

This Solidity smart contract, named ExamGrading, is designed to facilitate the submission of exam scores by a teacher for individual pupils. The contract ensures that only the designated teacher can submit scores and imposes validation checks to maintain data integrity.

## Features

- **submitScore:** This function allows the teacher to submit exam scores for a specific pupil. It includes the following validations:
  - Only the teacher can submit scores.
  - The submitted score must be within the valid range of 0 to 100.
  - A score can only be submitted once for a particular pupil.

## Usage

1. **Constructor:** The contract is initialized with the deploying address set as the teacher.

2. **submitScore Function:**
   - **Parameters:**
     - `address pupil`: The Ethereum address of the pupil.
     - `uint256 score`: The exam score to be submitted.
   - **Validation:**
     - Only the teacher can call this function.
     - The submitted score must be between 0 and 100.
     - A score can only be submitted once for a pupil.

## Example

```solidity
// Deploy the contract
ExamGrading examGrading = new ExamGrading();

// Teacher submits a score for a pupil
examGrading.submitScore(pupilAddress, 85);

// Attempting to submit a score again for the same pupil will result in an error.
examGrading.submitScore(pupilAddress, 90); // Error: "Score already submitted for the pupil"
```

## License

This smart contract is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
