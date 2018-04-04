pragma solidity ^0.4.15;

/** Ethereum Classic messaging system reference implementation
 *
 *  Originally designed by Dexaran
 */

contract ArrayTest {
    
    uint256[] public uints;
    address[] public addresses;
    
    function ArrayTest(address[] _addrs)
    {
        for (uint256 i; i<_addrs.length; i++)
        {
            addresses[i] = _addrs[i];
        }
    }
    
    function getBalance(address _addr) constant returns(uint256)
    {
        return _addr.balance;
    }
    
    function setUints(uint256[] _uints)
    {
        for (uint256 i; i<_uints.length; i++)
        {
            uints[i] = _uints[i];
        }
    }
}
