pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CoinzerCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CoinzerCoin(address _owner)  UpgradeableToken(_owner) {
    name = "CoinzerCoin";
    symbol = "CZC";
    totalSupply = 21000000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}