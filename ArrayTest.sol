pragma solidity ^0.4.15;

/** Ethereum Classic messaging system reference implementation
 *
 *  Originally designed by Dexaran

 Added getters / setters to testing purposes




 */

import {ArrayTest as ArrayContract} from './ArraysContract.sol';


contract ArrayTest is ArrayContract {

  function getAddress(uint256 index_) public view returns (address) {

    return addresses[index_];

  }

  function getUints(uint256 index_) public view returns (uint256) {

    return uints[index_];

  }

  function ArrayTest(address[] addrs) public ArrayContract(addrs) {

  }
}
