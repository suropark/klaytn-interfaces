// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./IKokoaRewardManager.sol";

interface ILPStakingPool {
    function kokoaRewardManager() external view returns (IKokoaRewardManager);

    function stake(address _to, uint256 _amount) external;

    function unstake(address _to, uint256 _amount) external;

    function balanceOf(address user) external view returns (uint256);
}
