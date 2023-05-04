// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Test} from "forge-std/Test.sol";
import {MyContract} from "dep-core/MyContract.sol";
import {MyStructLib} from "dep-sol/MyStructLib.sol";
import {MyStruct, MySubStruct} from "dep-types/lib/MyStruct.sol";

contract TestCore is Test {
    using MyStructLib for MyStruct;
    MyContract test;

    function setUp() public {
        test = new MyContract();
    }

    function testThing() public {
        MyStruct memory s = MyStruct(0, 0, new MySubStruct[](0));
        s.withA(1).withB(2);
        test.run(s);
    }
}
