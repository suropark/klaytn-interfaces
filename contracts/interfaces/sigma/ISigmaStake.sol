// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//0x20b36ed48754c92860166bbab4fc5376ca10a932
interface ISigmaStake {
    function claimReward() external;

    function withdraw(uint256 amount) external;

    function stake(uint256 amount) external;

    function balanceOf(address) external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function earned(address usr, address reward) external view returns (uint256);
}
