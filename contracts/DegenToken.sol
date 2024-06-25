// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    mapping(address => uint[]) public bat_redeemed;
    mapping(uint=>uint)internal bats;
    string[] public car_array;
    string public cricket_bats;
    uint internal i=1;
    uint[] public redeemed=[0,0,0];

    constructor() ERC20("Degen", "DGN")Ownable(msg.sender) {
        cricket_bats = "In our shop we have : 1. MRF Bat(English Willow), 2. SG Bat(Kashmir Willow), 3. SS Bat(English Willow) ";
        while(i<4){
            bats[i]=5;
            i++;
        }
        
    }

    function mint(address mint_address, uint256 value) public onlyOwner {
        _mint(mint_address, value);
    }

    function burn(uint256 value) public  {
        _burn(msg.sender, value);
    }

    function transfer(address recipient, uint256 value) public override returns (bool) {
        _transfer(msg.sender, recipient, value);
        return true;
    }

    function redeem(uint256 bat_no) public {
        require(bat_no > 0 && bat_no <= 3, "Enter a valid bat number");
        assert(balanceOf(msg.sender)>=15000);
        if(bats[bat_no]>0){
            _burn(msg.sender, 5000 * bat_no);
            bats[bat_no]--;
            redeemed[bat_no - 1]++;
        bat_redeemed[msg.sender].push(bat_no);
        }
        else{
            revert("Insufficent Bats");
        }
    }   
}
