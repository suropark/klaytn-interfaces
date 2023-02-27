// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 0x805c3fa4f0425f7b4ec6848e10de7cc7e0841a07
interface ISwapscannerDepositHelper {
    function deposit(
        address _lpToken,
        uint256 scnrAmount,
        uint256 klayAmount,
        uint256 minLp
    ) external payable;

    function depositSingle(
        address _lpToken,
        address token0,
        uint256 amount,
        uint256 minLp
    ) external payable;

    function requestWithdrawal(
        address,
        uint256,
        uint256,
        uint256
    ) external;
}
