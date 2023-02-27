// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//0x7c59930d1613ca2813e5793da72b324712f6899d
interface ISwapscannerStaking {
    function deposit(address, uint256) external;

    function depositReward(address) external;

    function withdrawReward(address) external;

    function requestWithdrawal(address, uint256) external returns (uint256);

    function claimWithdrawalRequest(address, uint256) external returns (uint256);
}
