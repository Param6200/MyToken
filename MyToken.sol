// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public tokenName;
    string public tokenAbbreviation;
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _abbreviation, uint256 _initialSupply) {
        tokenName = _name;
        tokenAbbreviation = _abbreviation;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply; 
    }

    function mint(address _to, uint256 _value) public {
        require(_to != address(0), "Cannot mint to the zero address");
        totalSupply += _value; 
        balances[_to] += _value; 
    }

    function burn(address _from, uint256 _value) public {
        require(_from != address(0), "Cannot burn from the zero address");
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value; 
        balances[_from] -= _value; 
    }
}
        
