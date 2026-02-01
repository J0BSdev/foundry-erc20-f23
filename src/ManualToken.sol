//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;




contract ManualToken {


    mapping(address => uint256) private s_balances;


    //function name() public pure returns (string memory) {
    //    return "ManualToken";

 //   }

string public name = "ManualToken";

    function totalSupply() public pure returns (uint256) {
        return 100 ether;


    }


    function decimals() public pure returns (uint8) {
        return 18;
    }

    function balanceOf(address account) public view returns (uint256) {
        return s_balances[account];
    }

    function transfer (address to, uint256 amount) public {
        uint256 previousBalance = balanceOf(msg.sender) + balanceOf(to);
        s_balances[msg.sender] -= amount;
        s_balances[to] += amount;
        require(s_balances[msg.sender] + s_balances[to] == previousBalance, "Balance of sender and recipient is not equal to previous balance");
    }


    
}
