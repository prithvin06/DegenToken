# Project Title

## DegenToken: A Redeemable ERC20 Token

## Description

DegenToken is an ERC20 token deployed on the Avalanche Fuji Testnet. This token allows holders to mint, burn, and transfer tokens. Additionally, users can redeem their tokens for specific cricket bats available in the shop. The redeemable bats are:

1. MRF BAT
2. SG BAT
3. SS BAT

## The smart contract includes the following features:

- Minting of new tokens by the owner
- Burning of tokens by users
- Transfer of tokens between users
- Redeeming tokens for cricket bats, with limited quantities tracked and updated

The smart contract ensures that the redeemable items are limited in quantity and updates the redeemed status accordingly.

## Getting Started

### Installing
- Clone the repository from the source:
```
git clone <repository_url>
```
- Navigate to the project directory
```
cd <project_directory>
```
- Install the required dependencies
```
npm install
```
- Create a .env file in the project root directory and add your private key and Snowtrace API key
```
PRIVATE_KEY=<your_private_key>
SNOWTRACE_API_KEY=<your_snowtrace_api_key>
```

### Executing program
- Deploy the smart contract to the Avalanche Fuji Testnet

```
code blocks for commands
```
- Verify the deployed contract
```
npx hardhat verify <deployed_contract_address> --network fuji
```
## Help
- For common problems or issues, you can use the following command to get more information:

```
npx hardhat help

```

## Authors

M.Prithvin
[prithvin04@gmail.com]

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
