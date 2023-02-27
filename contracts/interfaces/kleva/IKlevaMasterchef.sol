// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IKlevaMasterchef {
    function depositToPool(
        address _user,
        uint256 pId,
        uint256 _amount
    ) external;

    function withdrawFromPool(
        address _user,
        uint256 _pid,
        uint256 _amount
    ) external;

    function harvest(uint256 _pid) external;

    function rewardPerBlock_() external view returns (uint256);

    function rewardPerBlock() external view returns (uint256);

    function calcPendingReward(uint256 _pid, address _for) external view returns (uint256);

    function getPoolId(address _tokenAddress) external view returns (uint256);

    function getTotalAllocPoint() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function getRewardPerBlock() external view returns (uint256);

    function getUserInfo(uint256 _pid, address _user)
        external
        view
        returns (
            uint256 amount,
            uint256 rewardDebt,
            address fundedBy
        );

    function poolInfos(uint256 _pid)
        external
        view
        returns (
            address _vaultToken,
            uint256 _allocPoint,
            uint256 lastRewardBlockNumber,
            uint256 accRewardPerShare,
            bool isRealVault
        );

    function userInfos(uint256 _pid, address _user)
        external
        view
        returns (
            uint256 amount,
            uint256 rewardDebt,
            address fundedBy
        );

    function poolLength() external view returns (uint256);
}
