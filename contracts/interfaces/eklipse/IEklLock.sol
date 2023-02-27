// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//0xD067C3b871ee9E07BA4205A8F96c182baBBA6c58
interface IEklLock {
    function feeClaimer() external view returns (address);

    function userInfo(address _user)
        external
        view
        returns (
            uint256 _amount,
            uint256 lockStarted,
            uint256 period,
            uint256 lastFeeClaimed
        );

    function voteContract() external view returns (address);

    function addLock(uint256 _amount, uint256 _periodDay) external;

    function withdrawEkl() external;

    function getUserVekl(address _user) external view returns (uint256);

    function withdrawFeeReward() external;

    function totalVekl() external view returns (uint256);

    function calculateFeeReward(address _user) external view returns (uint256);
}
