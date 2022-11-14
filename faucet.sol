// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
contract faucet{
    receive() external payable{} //accept any amount received
    function withdraw(uint withdraw_amount) public{ //give ether to who asks
        require(withdraw_amount <= 100000000000000000); //limits withdrawal amount
        address payable to = payable(msg.sender); //asker can give and receive ether
        to.transfer(withdraw_amount); //give ether to asker after request
    }
}
