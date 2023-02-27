// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 0xb0Da0BBE0a13C2c17178aEa2fEC91AA08157F299
interface II4ISwap {
    function addLiquidity(uint256[] memory amounts, uint256 minMintAmount) external payable;

    function getVirtualPrice() external view returns (uint256);

    function coinIndex(address token) external view returns (uint256);

    function N_COINS() external view returns (uint256);

    function token() external view returns (address _poolToken);
}
