// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IEklChef {
    function eklPerSecond() external view returns (uint256);

    function poolInfo(uint256 _pid)
        external
        view
        returns (
            address _lp,
            uint256 _allocPoint,
            uint256,
            uint256
        );

    function totalAllocPoint() external view returns (uint256);

    function userInfo(uint256 _pid, address _user) external view returns (uint256 _amount, uint256);

    function poolLength() external view returns (uint256);

    function pendingEKL(uint256 _pid, address _user) external view returns (uint256);

    function deposit(uint256 _pid, uint256 _amount) external;

    function withdraw(uint256 _pid, uint256 _amount) external;
}
