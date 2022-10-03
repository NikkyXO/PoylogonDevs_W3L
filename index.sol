// Solidity program to implement
// the above approach
pragma solidity >=0.7.0 <0.9.0;

contract StudentRecords {
    // Create a structure for
    // student details
    struct Student {
        //uint student_id;
        address ID;
        string fName;
        string lName;
    }
    // Student[] public studentList;

    mapping(address => Student) public students;
    // mapping(uint256 => Student) public students;
    uint256 public playerCount = 0;

    function AddStudent(string memory lName, string memory fName) public {
        // FOR AN ARRAY

        // studentList.push(Student(fName, lName));

        // FOR A STRUCT

        // playerCount += 1;
        // students[student_id].student_id = playerCount
        // students[student_id].fName = fName;
        // students[student_id].lName = lName;

        students[msg.sender] = Student(msg.sender, fName, lName);
        playerCount += 1;
    }

    function getStudent(address ID) public view returns (Student memory) {
        return students[ID];
    }
}
