pragma solidity ^0.4.15;

/** Ethereum Classic messaging system reference implementation
 *
 *  Originally designed by Dexaran
 */

contract ArrayTest {

  uint256[] uints;
  address[] addresses;

  function ArrayTest(address[] _addrs)
  {

    addresses.length = _addrs.length;

    for (uint256 i; i < _addrs.length; i++)
    {
      addresses[i] = _addrs[i];
    }
  }

  function getBalance(address _addr) constant returns (uint256)
  {
    return _addr.balance;
  }

  function getAddress(uint256 index_) public view returns (address) {

    return addresses[index_];

  }

  function getUints(uint256 index_) public view returns (uint256) {

    return uints[index_];

  }

  function setUints(uint256[] _uints)



  {

    uints.length = _uints.length;

    for (uint256 i; i < _uints.length; i++)
    {
      uints[i] = _uints[i];
    }
  }
}
