// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {

    address public owner;
    mapping(address => uint256) public balances;

    constructor() {
        owner = msg.sender;
    }

    event Deposit(address indexed sender, uint256 amount);
    event Withdrawal(address indexed sender, uint256 amount);

    function deposit(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        balances[msg.sender] += amount;
        emit Deposit(msg.sender, amount);
    }

    function withdraw(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        emit Withdrawal(msg.sender, amount);
    }

    function assertExample(uint256 x) public pure returns (uint256) {
        assert(x > 0); // Will revert if x is not greater than 0
        return x;
    }

    function requireExample(uint256 y) public pure returns (uint256) {
        require(y != 0, "Value must not be zero"); // Will revert if y is 0
        return y;
    }

    function revertExample() public pure {
        revert("This function always reverts"); // Always reverts when called
    }

    function balance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
