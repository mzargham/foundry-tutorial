// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

//import "forge-std/Test.sol";

contract OwnerUpOnlyTest is Test {
    OwnerUpOnly upOnly;

    // ...

    function testFailIncrementAsNotOwner() public {
        vm.prank(address(0));
        upOnly.increment();
    }
}

