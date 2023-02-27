// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISKokoa {
    function airdropInfo(address)
        external
        view
        returns (
            address treasury,
            uint256 acc,
            uint256
        );

    function claimableAirdropToken(address _token, address _user) external view returns (uint256);

    function stake(address _user, uint256 _amount) external;

    function claimAirdropToken(address _token, address _user) external;
}
