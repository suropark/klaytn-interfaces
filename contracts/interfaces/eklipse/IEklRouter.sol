// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IEklRouter {
    function addLiquidity(
        address swap,
        uint256[] memory _amounts,
        uint256 min,
        uint256 deadline
    ) external;
}
