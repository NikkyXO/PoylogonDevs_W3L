// SPDX-License-Identifier: MIT
// Solidity program to implement
// Assignment
// Using Remix Development tools or Hardhat
// Development write a smart contract that
// records the database of students in a class.
// Hint the knowledge of struct, mapping, and
// variable data type will be needed, The expected functions are
// A function that allows you to register a student,
// A function that allows you to see the record of a student using
//the student Id(The id can be any data type you want).
// You can also add as many functions as needed depending on your creativity.

pragma solidity >=0.7.0 <0.9.0;

contract StudentRecords {
    struct Student {
        uint256 student_id;
        string fName;
        string lName;
    }

    Student[] public studentList;
    mapping(address => Student) public students;
    uint256 public StudentCount = 0;

    Student public newStudent;

    function AddStudent(string memory _lName, string memory _fName) public {
        newStudent[msg.sender] = Student(StudentCount, _fName, _lName);
        studentList.push(newStudent);
        StudentCount += 1;
    }

    function getStudent(address stdntaddress) public view returns (uint256) {
        return students[stdntaddress].student_id;
    }
}
