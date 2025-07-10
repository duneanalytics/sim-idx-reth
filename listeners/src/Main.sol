// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./interfaces/IERC20.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        Listener listener = new Listener();
        addTrigger(chainContract(Chains.Ethereum, 0xae78736Cd615f374D3085123A210448E74Fc6393), listener.triggerOnTransferEvent());
        addTrigger(chainContract(Chains.Ethereum, 0xae78736Cd615f374D3085123A210448E74Fc6393), listener.triggerOnApprovalEvent());
    }
}


contract Listener is RocketTokenRETH$OnTransferEvent, RocketTokenRETH$OnApprovalEvent {
    event Transfer(uint256 amount, uint64 timestamp, address from, address to);
    event Approval(uint256 amount, uint64 timestamp, address owner, address spender);
    event Account(address addr, uint256 balance, bool isOwner);
    event Allowance(address owner, address spender, uint256 amount);

    function onTransferEvent(
        EventContext memory ctx,
        RocketTokenRETH$TransferEventParams memory inputs
    )
        external
        override
    {   
        emit Transfer(inputs.value, uint64(block.timestamp), inputs.from, inputs.to);
        emit Account(inputs.from, IERC20(ctx.txn.call.callee).balanceOf(inputs.from), true);
        emit Account(inputs.to, IERC20(ctx.txn.call.callee).balanceOf(inputs.to), false);
    }

    function onApprovalEvent(
        EventContext memory ctx,
        RocketTokenRETH$ApprovalEventParams memory inputs
    )
        external
        override
    {
        emit Approval(inputs.value, uint64(block.timestamp), inputs.owner, inputs.spender);
        emit Allowance(inputs.owner, inputs.spender, IERC20(ctx.txn.call.callee).allowance(inputs.owner, inputs.spender));
    }
}

