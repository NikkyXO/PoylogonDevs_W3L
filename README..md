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


 Deploy your ERC20 tokens on Goerli testnet and use etherjs to interact with all the ERC20 standard functions.
 # Helpful resources
 [https://hardhat.org/tutorial](HardHat.prg-Docs)
 [https://surajondev.com/2022/09/05/connect-dapp-to-metamask-wallet-using-ether-js/](Connect dapp to metamask wallet using etherjs)
 [https://blog.logrocket.com/building-dapp-ethers-js/](Building a DApp with Ether.Js)
 [https://betterprogramming.pub/writing-and-testing-a-smart-contract-with-hardhat-and-ethersjs-2b0dbd450997](Writing and Testing a Smart Contract With Hardhat and Ethers.js)
 [https://www.web3.university/tracks/create-a-smart-contract/interact-with-your-smart-contract](Interact With Your Smart Contract)
 [https://www.chainshot.com/article/hardhat-guides-setup](Hardhat Guides Setup)
 [https://www.web3.university/article/how-to-deploy-your-own-erc-20-token](How to Deploy Your Own ERC-20 Token)

Deployed contract viewed at etherscan.io with token address



