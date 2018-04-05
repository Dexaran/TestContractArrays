pragma solidity ^0.4.15;

import {ArrayTest} from './ArrayTest.sol';

import {ArrayTest as ArrayContract} from './ArraysContract.sol';


/**


    Test Deployment




 */

contract TestArrayContract {


  ArrayTest public arrayTest;

  ArrayContract public arrayContract;

  address[] public addrs_ = [0x1234, 0x12345];
  uint256[] public uints_;

  function TestArrayContract() public {


    arrayTest = new ArrayTest(addrs_);

    arrayContract = new ArrayContract(addrs_);

    assert(arrayTest.getAddress(0) == addrs_[0] && addrs_[0] == 0x1234);

    assert(arrayTest.getAddress(1) == addrs_[1] && addrs_[1] == 0x12345);

    uint256[] memory uints = new uint256[](10);

    for (uint256 i = 0; i < 10; i++) {

      uints[i] = uint256(i * 100);
    }

    arrayTest.setUints(uints);


    uint256[] memory uints__ = new uint256[](10);
    for (uint256 j = 0; j < 10; j++) {

      uint256 cur = arrayTest.getUints(j);

      uints__[j] = cur;

      assert(cur == uints__[j]);
    }

    uints_ = uints__;


  }
}
