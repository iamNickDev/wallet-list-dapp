// SPDX-License-Identifier: MIT
// This contract manages a list of wallets.
// Wallets can be added by the contract owner.
// The contract is non-reentrant to prevent reentrancy attacks.
pragma solidity ^0.8.24.0;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol"; 

contract WalletList is Ownable, ReentrancyGuard {
    // Mapping to track whether a wallet address is listed.
    mapping(address => bool) private _isWalletListed;

    // Event emitted when a wallet is added to the list.
    event WalletAdded(address indexed wallet);

    /**
     * @dev Adds a wallet address to the list.
     * @param wallet The address to be added.
     */
    function addWallet(address wallet) public onlyOwner nonReentrant {
        require(wallet != address(0), "wallet is the zero address");
        require(!_isWalletListed[wallet], "wallet already added");

        _isWalletListed[wallet] = true;

        emit WalletAdded(wallet);
    }

    /**
     * @dev Checks if a wallet address is listed.
     * @param wallet The address to check.
     * @return Whether the wallet is listed.
     */
    function isWalletListed(address wallet) public view returns (bool) {
        return _isWalletListed[wallet];
    }
}
