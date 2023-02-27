// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 0x18428b7826C2588207e39b742c15642B8D9755B4
interface IEklVote {
    // farmAddress
    function voteForGauge(address _gaugeAddress, uint256 _amount) external;

    function getLeftVotingPower(address _user) external view returns (uint256);

    function currentWeek() external view returns (uint256);

    // returns (total, gauge's ve)
    function getPortion(uint256 _week, address _gaugeAddress) external view returns (uint256, uint256);

    function getCurrentVoteResult() external view returns (uint256, uint256);

    function getCurrentVoteResult2() external view returns (address);

    // getPortion(currentWeek - 1) => applied portion for current week apr
}
