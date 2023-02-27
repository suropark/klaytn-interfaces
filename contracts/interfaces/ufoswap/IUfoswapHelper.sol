// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUfoswapHelper {
    // 0x6783d1049fe76b9db8784fa266c45a5ccccbfc53

    function stake(address _stakeToken, uint256 _amount) external;

    function emergencyWithdraw(address _stakeToken) external;

    function harvest(address _stakeToken) external;

    function unstake(address _stakeToken, uint256 _amount) external;
}
