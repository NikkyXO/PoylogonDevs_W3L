// Solidity program to implement
// the above approach
pragma solidity >=0.7.0 <0.8.0;

contract StudentRecords {
    // Create a structure for
    // student details
    struct Student {
        int256 ID;
        string fName;
        string lName;
        int256 marks;
    }

    address owner;
    int256 public stdCount = 0;
    mapping(int256 => Student) public stdRecords;

    modifier onlyOwner() {
        require(owner == msg.sender);
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // function to add
    // the new records
    function addNewRecords(
        int256 _ID,
        string memory _fName,
        string memory _lName,
        int256 _marks
    ) public onlyOwner {
        stdCount = stdCount + 1;

        // Fetch the student details
        // with the help of stdCount
        stdRecords[stdCount] = Student(_ID, _fName, _lName, _marks);
    }
}
