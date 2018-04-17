pragma solidity ^0.4.15;

import {ArrayTest} from './ArrayTest.sol';

/**
    Test Deployment


 */

contract TestArrayContract {


  ArrayTest public arrayTest;

  address[] public addrs_ = [0x1234, 0x12345];

  function TestArrayContract() public {


    arrayTest = new ArrayTest(addrs_);

    assert(arrayTest.getAddress(0) == addrs_[0] && addrs_[0] == 0x1234);

    assert(arrayTest.getAddress(1) == addrs_[1] && addrs_[1] == 0x12345);

    uint256[] memory uints = new uint256[](10);

    for (uint256 i = 0; i < 10; i++) {

      uints[i] = uint256(i * 100);
    }

    arrayTest.setUints(uints);

    for (uint256 j = 0; j < 10; j++) {

      uint256 cur = arrayTest.getUints(j);

      assert(cur == uints[j] && cur == uint256(j * 100));
    }

  }
}
