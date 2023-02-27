// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IIBToken {
    function deposit(uint256 _value) external payable;

    function getTotalToken() external view returns (uint256);

    function baseTokenAddress() external view returns (address);

    function totalSupply() external view returns (uint256); 

    function getTotalToken() external view returns (uint256);

    function balanceOf(address _usr) external view returns (uint256)

}
