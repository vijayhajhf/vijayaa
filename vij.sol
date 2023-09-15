// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyTokenVijaya {

    // Public variables 
    string public Tokenn_namee_ = "Vijay";
    string public Tokenn_abbrvv_ = "VIJ";
    uint256 public Totall_supplyy = 50000;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function 
    function minting(address mint_Addr_, uint256 mint_Value_) public {
        Totall_supplyy += mint_Value_;
        balances[mint_Addr_] += mint_Value_;
    }

    // Burn function 
    function burning(address burn_Addr_, uint256 burn_Value_) public {
        require(balances[burn_Addr_] >= burn_Value_, "Insufficient balance to burn");
        
        Totall_supplyy -= burn_Value_;
        balances[burn_Addr_] -= burn_Value_;
    }
}