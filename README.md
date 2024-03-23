### Wallet-List-Dapp

This project comprises a Solidity smart contract for on-chain whitelist management and a Node.js service to track additions using Alchemy Web3. Additionally, it Dockerizes the event-monitoring service for deployment.

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Getting Started](#getting-started)
    - [Clone Repository](#clone-repository)
    - [Deploy Contract](#deploy-contract)
    - [Setup npm Project](#setup-npm-project)
3. [Docker Setup](#docker-setup)
4. [Testing the Contract](#testing-the-contract)
5. [Find Deployed Smart Contract](#find-deployed-smart-contract)

---

## Prerequisites

- Node.js version 18 or higher
- Docker (for running the Docker image)

## Getting Started

### Clone Repository

```bash
# Clone the repository
https://github.com/iamNickDev/wallet-list-dapp.git

# Navigate to the project directory
cd Test-AddWallet-Task
```

### Deploy Contract

Deploy the contract file using the Remix IDE.

### Setup npm Project

```bash
# Install dependencies 
yarn install
```

Create a `.env` file in the root folder and add all the environment variables from `example.env`. Copy the contract address and add it to `.env`.

## Docker Setup 

```bash 
# Build the Docker image (make sure the name is in lowercase)
docker build -t event-monitoring-service .

# Run the Docker container
docker run --env-file .env event-monitoring-service .
```

## Testing the Contract

Call the `addWallet` function using Remix or any blockchain explorer.

## Find Deployed Smart Contract

- [Optimism Blockscout](https://optimism-sepolia.blockscout.com/address/0x83addbfa8ca67c9faf51d18338b2d08243b8f4da?tab=read_contract)
- [Etherscan](https://sepolia.etherscan.io/address/0xc528bae8045b5015cd3912dc1fa932972bb3b1fb#code)

---

This structure provides clear instructions for setting up the project, deploying the contract, and running the Docker container. Additionally, it includes links to the deployed smart contract for reference.
