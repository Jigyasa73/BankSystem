# BankSystem
The "Bank" smart contract is a digital representation of a simple banking system on the Ethereum blockchain. It allows users to deposit and withdraw funds from their accounts. The contract also demonstrates the use of error handling mechanisms like require(), assert(), and revert() to ensure secure and reliable transactions.

## Description
**Owner and Balances:**

The contract maintains an owner variable to identify the creator of the contract.
A balances mapping associates user addresses with their account balances in the bank.
Events:

The contract defines two events, Deposit and Withdrawal, to log transaction activities for users.

**Constructor:**
The contract constructor sets the deployer's address as the owner of the contract. This creator will have additional privileges, such as closing the bank.

**1. Deposit Function (deposit()):**

Users can deposit funds into their accounts.
The require() statement ensures that the deposited amount is greater than zero.
The user's account balance is updated by adding the deposited amount.
An emit statement generates a Deposit event to record the transaction.

**2. Withdrawal Function (withdraw()):**

Users can withdraw funds from their accounts.
The require() statement verifies that the withdrawal amount is greater than zero and the user has enough balance.
The user's account balance is updated by subtracting the withdrawn amount.
A Withdrawal event is emitted to document the withdrawal.

**3. Assertion Example (assertExample()):**

Demonstrates the use of the assert() statement.
It checks if a given value is greater than zero using the assert() statement.
This function is purely for educational purposes and isn't used in the main banking operations.

**4. Requirement Example (requireExample()):**

Illustrates the use of the require() statement.
Ensures that a given value is not equal to zero.
This function is for educational purposes and isn't used in the core banking operations.

**5. Revert Example (revertExample()):**

Presents the use of the revert() statement.
This function intentionally reverts every transaction with a custom message.
Useful for demonstrating how transactions can be deliberately reverted.

**6. Balance Function (balance()):**

Enables users to inquire about their account balances.
The function returns the balance associated with the caller's address.

## Authors
Jigyasha Sharma


