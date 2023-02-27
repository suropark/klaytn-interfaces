// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IEklSwap {
    function tokenIndexes(address _token) external view returns (uint8);

    function addLiquidity(
        uint256[] memory amounts,
        uint256 minMint,
        uint256 deadline
    ) external returns (uint256);

    function swap(
        uint8 from,
        uint8 to,
        uint256 inAmount,
        uint256 minAmount,
        uint256 deadline
    ) external returns (uint256);

    function removeLiquidity(
        uint256 lpAmount,
        uint256[] memory minAmounts,
        uint256 deadline
    ) external returns (uint256[] memory);

    function getVirtualPrice() external view returns (uint256);

    function getToken(uint8 index) external view returns (IERC20);

    function getTokens() external view returns (IERC20[] memory);

    function getTokenIndex(address _token) external view returns (uint8);

    function getNumberOfTokens() external view returns (uint256);
}
