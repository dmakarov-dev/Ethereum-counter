// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    int256 private count;

    // Event that is emitted when the counter value is changed
    event CounterChanged(int256 newValue);

    // Constructor to initialize the counter value
    constructor(int256 initialValue) {
        count = initialValue;
        emit CounterChanged(initialValue);
    }

    // Function to increment the counter value
    function increment() public {
        count += 1;
        emit CounterChanged(count);
    }

    // Function to decrement the counter value
    function decrement() public {
        count -= 1;
        emit CounterChanged(count);
    }

    // Function to get the current counter value
    function getCount() public view returns (int256) {
        return count;
    }
}
