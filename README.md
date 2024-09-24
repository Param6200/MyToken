# MyToken

## Overview

**MyToken** is a Solidity smart contract designed to create a fungible token. It allows for minting new tokens and burning existing ones, providing a basic framework for token management on the Ethereum blockchain.

## Description

The **MyToken** contract includes essential features for managing token balances and total supply using Solidity's mappings. It provides functions to mint new tokens to specified addresses and to burn tokens from addresses, ensuring that users have enough balance before any burn operation is executed.

## Getting Started

### Deploying the Contract

#### Setup

1. **Environment Setup**: Use Remix or another Solidity development environment.
2. **Create Contract File**: Save the contract code in a file named `MyToken.sol`.

#### Compiling and Deploying

1. **Compile the Contract**: Ensure the Solidity compiler version is set to `0.8.18`.
2. **Deploy the Contract**: Deploy the contract on your preferred Ethereum network (e.g., Rinkeby, Goerli).

## Interacting with the Contract

Once deployed, you can interact with the contract using Ethereum wallets or scripting:

- **Mint Tokens**: Call the `mint` function to create new tokens for a specified address.
  
  Example: `mint("0xUserAddress", 1000)` to mint 1000 tokens.

- **Burn Tokens**: Call the `burn` function to destroy tokens from a specified address.
  
  Example: `burn("0xUserAddress", 500)` to burn 500 tokens.

## Help

### Common Issues

- **Minting Errors**: Ensure the recipient address is not the zero address when calling the `mint` function.
- **Burning Errors**: Ensure the address has a sufficient balance before attempting to burn tokens.

### Additional Resources

For assistance or more detailed information, refer to the Solidity documentation or other Ethereum development resources.

## Authors

- **PARMANAND**

## License

MIT
