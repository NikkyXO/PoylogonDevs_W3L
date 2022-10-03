**Theory Questions:**

# Explain the difference between the following terms in the smart contract.

  - A view function and pure function
  - A payable and nonpayable function
  - Constant data type and immutable data type.
  - A Read Function and Write function.

### A view function and pure function

View Functions:
view functions ensure that they do not modify the state, but reads 

pure functions:
Functions that neither read or modify the state . they are more restrictive than vuew functions

### A payable and nonpayable function

Payable Function
The payable keyword specifies that someone can be allowed to send ether to a contract and run code to account for the deposit

Non payable function

A non payable function will execute CALLVALUE and reverts if returns a non ZERO value


 ### Constant data type and immutable data type.

 immutable data type specifies that the OBJECT will not change be it strings, python tuples etc

 Constant data type: specifies that scope of A VARIABLE is not modified 


 A Read Function and Write function.
 Read function that only reads from a state and not modify it;
 Write function is able to modify a state by changing state variables values