// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract WFToken {
    // Public variables for token details
    string public tokenName = "WFToken";
    string public tokenAbbreviation = "WTK";
    uint256 public totalSupply;

    // Mapping to store balances
    mapping(address => uint256) public balances;

    // Mint function to increase the total supply and sender's balance
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to decrease the total supply and sender's balance
    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient balance can't burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
