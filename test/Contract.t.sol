// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

import "../lib/forge-std/src/Test.sol";

contract OwnerUpOnlyTest is Test {
    OwnerUpOnly upOnly;

    // ...

    function testFailIncrementAsNotOwner() public {
        vm.prank(address(0));
        upOnly.increment();
    }
}

