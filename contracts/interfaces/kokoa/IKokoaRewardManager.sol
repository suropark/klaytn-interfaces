// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IKokoaRewardManager {
    function claimReward(address _pool, address _user) external;

    function claimRewardAndStake(address _pool) external returns (bool);

    function claimableReward(
        address _pool,
        address _user,
        bool bonus
    ) external view returns (uint256 claimable);

    function poolInfo(address _pool)
        external
        view
        returns (
            uint256 accReward,
            uint256 timestamp,
            uint256 allocPoint,
            bool init,
            uint256 fee
        );

    //    function poolInfo(address pool)
    //         external
    //         view
    //         returns (
    //             uint256,
    //             uint256,
    //             uint256,
    //             bool
    //         );

    function poolLength() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function rewardPools() external view returns (address[] memory);

    // except aklay
    function userInfo(address pool, address user) external view returns (int256, uint256);
}
