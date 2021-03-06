// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
// ----------------------------------------------------------------------------

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.9.0;

abstract contract ERC20Interface {
    uint256 public totSupply;
    
    function totalSupply() external virtual view returns (uint);
    function balanceOf(address tokenOwner) external virtual view returns (uint balance);
    function allowance(address tokenOwner, address spender) external virtual view returns (uint remaining);
    function transfer(address to, uint tokens) external virtual returns (bool success);
    function approve(address spender, uint tokens) external virtual returns (bool success);
    function transferFrom(address from, address to, uint tokens) external virtual returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}