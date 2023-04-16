// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract VaultProxy is UUPSUpgradeable, OwnableUpgradeable {
    constructor(address initialImpl) initializer{
        _upgradeTo(initialImpl);
        __Ownable_init();
    }

   function _authorizeUpgrade(address) internal override onlyOwner {}
}
