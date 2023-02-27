// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IDepositHelper {
    function addLiquidityWithKCT(
        address lp,
        address token,
        uint256 amount,
        uint256 limit,
        uint256 inputForLiquidity,
        uint256 targetForLiquidity
    ) external;
}
