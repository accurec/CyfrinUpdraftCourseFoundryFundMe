## About

As part of my learning path of smart contract/blockchain/web3 development I took [Cyfrin Updraft](https://updraft.cyfrin.io/dashboard) course. This repository is a result of me learning [Foundry fundamentals](https://updraft.cyfrin.io/courses/foundry) lesson. Thank you Patrick and the team for putting together such an amazing learning resource! 

The heart of this repository is a `FundMe` smart contract that represents a simple crowd funding application that allows users to send ETH to contract and keep track of which user contributed how much. The owner of the contract can then withdraw the funds.

P.S. As part of this project I've also used `Cursor` IDE, which I liked a lot for its native AI capabilities.

## Learnings and techniques used

As part of lesson I've learned a bunch of things:
1) Using onchain oracle to retrieve real world data about ETH/USD conversion rates.
2) Using modifiers in smart contract and tests to better organize the code and not repeat myself.
3) Learned how to encrypt private key and use it to run deployments and other commands using `cast wallet import NAME_OF_THE_KEY --interactive` and running commands, such as `cast send CONTRACT_ADDRESS "store(uint256)" 9903 --rpc-url RPC_URL --account NAME_OF_THE_KEY`.
4) Learning about Solidity storage, and some gas optimization techniques to make smart contract deployment and xecution more gas efficient.
5) Learned different ways to transfer funds from smart contract to another address.
6) Learned Foundry commands to initialze project, build, test and deploy smart contracts locally, as well as to testnets using Alchemy URLs.
7) Learned about Foundry `forge`, `cast`, `anvil` and `chisel` components.
8) Learned how to abstract contract address for onchain oracle to be used with `AggregatorV3Interface`, so that `FundMe` contract and testing can be done in multiple chains without the need to change the code in multiple places.
9) Writing scripts to be able to use them for deployment and testing purposes.
10) Writing unit and integration tests using Solidity and Foundry.
11) Using cheatcodes for testing.
12) Learned how to run tests on testnet using `forge test --fork-url`.
13) Overview of `foundry.toml` file.
14) Creating and working with `Makefile` to be able to create shortcuts for complex commands.
15) Smart contract verification process using Etherscan API key.
16) Learning differences between vanilla Foundry and zkSync Foundry.
17) Learning about `broadcast` folder and `gas-snapshot` files. And many, many, many other things!

## How to use this repository

1) Clone the repository using ```git clone https://github.com/accurec/CyfrinUpdraftCourseFoundryFundMe.git```.
2) [Install Foundry](https://book.getfoundry.sh/getting-started/installation).
3) Run `foundryup`.
4) Run `forge build` to download dependencies for the project and compile the code.
5) Run `forge test` to run tests locally.
6) To run tests on Sepolia or deploy locally you would need to create `.env` file with the following variables that you can get from running `anvil` command and also setting up your Alchemy app to connect to Sepolia: `LOCAL_RPC_URL`, `LOCAL_PRIVATE_KEY`, `SEPOLIA_ALCHEMY_API_URL`. Once the values are in `.env` file, you can run shortcut commands from the `Makefile`.

## Useful resources

1) [Foundry book](https://book.getfoundry.sh/)
2) [Foundry](https://github.com/foundry-rs/foundry)
3) [Alchemy](https://www.alchemy.com/)
4) [Foundry zkSync](https://github.com/matter-labs/foundry-zksync)
5) [Sepolia zkSync explorer](https://sepolia.explorer.zksync.io/)
6) [Sepolia explorer](https://sepolia.etherscan.io/)
7) [Etherscan explorer](https://etherscan.io/)
8) [Chainlink data feeds](https://docs.chain.link/data-feeds)
9) [EVM codes](https://www.evm.codes/)
