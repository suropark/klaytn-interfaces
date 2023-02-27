// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IKSDRewardManager {
    function claimReward(address _pool, address _user) external;

    function claimableReward(address _pool, address _user) external view returns (uint256 claimable);

    function poolLength() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function rewardPools() external view returns (address[] memory);

    function earnSumInRange() external view returns (uint256);

    function earnHistoriesLength() external view returns (uint256);

    function earnCursor() external view returns (uint256);

    function targetDksdApr() external view returns (uint256);

    function earnHistories(uint256) external view returns (uint256 timestamp, uint256 amount);

    function poolInfo(address _pool)
        external
        view
        returns (
            uint256 acc,
            uint256 ksdReward,
            uint256 alloc,
            bool init
        );

    function userInfo(address pool, address user) external view returns (int256, uint256);
}
