// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function RocketTokenRETH$Abi() pure returns (Abi memory) {
    return Abi("RocketTokenRETH");
}
struct RocketTokenRETH$AllowanceFunctionInputs {
    address owner;
    address spender;
}

struct RocketTokenRETH$AllowanceFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$ApproveFunctionInputs {
    address spender;
    uint256 amount;
}

struct RocketTokenRETH$ApproveFunctionOutputs {
    bool outArg0;
}

struct RocketTokenRETH$BalanceOfFunctionInputs {
    address account;
}

struct RocketTokenRETH$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$BurnFunctionInputs {
    uint256 _rethAmount;
}

struct RocketTokenRETH$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct RocketTokenRETH$DecreaseAllowanceFunctionInputs {
    address spender;
    uint256 subtractedValue;
}

struct RocketTokenRETH$DecreaseAllowanceFunctionOutputs {
    bool outArg0;
}

struct RocketTokenRETH$GetCollateralRateFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$GetEthValueFunctionInputs {
    uint256 _rethAmount;
}

struct RocketTokenRETH$GetEthValueFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$GetExchangeRateFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$GetRethValueFunctionInputs {
    uint256 _ethAmount;
}

struct RocketTokenRETH$GetRethValueFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$GetTotalCollateralFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$IncreaseAllowanceFunctionInputs {
    address spender;
    uint256 addedValue;
}

struct RocketTokenRETH$IncreaseAllowanceFunctionOutputs {
    bool outArg0;
}

struct RocketTokenRETH$MintFunctionInputs {
    uint256 _ethAmount;
    address _to;
}

struct RocketTokenRETH$NameFunctionOutputs {
    string outArg0;
}

struct RocketTokenRETH$SymbolFunctionOutputs {
    string outArg0;
}

struct RocketTokenRETH$TotalSupplyFunctionOutputs {
    uint256 outArg0;
}

struct RocketTokenRETH$TransferFunctionInputs {
    address recipient;
    uint256 amount;
}

struct RocketTokenRETH$TransferFunctionOutputs {
    bool outArg0;
}

struct RocketTokenRETH$TransferFromFunctionInputs {
    address sender;
    address recipient;
    uint256 amount;
}

struct RocketTokenRETH$TransferFromFunctionOutputs {
    bool outArg0;
}

struct RocketTokenRETH$VersionFunctionOutputs {
    uint8 outArg0;
}

struct RocketTokenRETH$ApprovalEventParams {
    address owner;
    address spender;
    uint256 value;
}

struct RocketTokenRETH$EtherDepositedEventParams {
    address from;
    uint256 amount;
    uint256 time;
}

struct RocketTokenRETH$TokensBurnedEventParams {
    address from;
    uint256 amount;
    uint256 ethAmount;
    uint256 time;
}

struct RocketTokenRETH$TokensMintedEventParams {
    address to;
    uint256 amount;
    uint256 ethAmount;
    uint256 time;
}

struct RocketTokenRETH$TransferEventParams {
    address from;
    address to;
    uint256 value;
}

abstract contract RocketTokenRETH$OnApprovalEvent {
    function onApprovalEvent(EventContext memory ctx, RocketTokenRETH$ApprovalEventParams memory inputs) virtual external;

    function triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes32(0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApprovalEvent.selector
        });
    }
}

abstract contract RocketTokenRETH$OnEtherDepositedEvent {
    function onEtherDepositedEvent(EventContext memory ctx, RocketTokenRETH$EtherDepositedEventParams memory inputs) virtual external;

    function triggerOnEtherDepositedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes32(0xef51b4c870b8b0100eae2072e91db01222a303072af3728e58c9d4d2da33127f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEtherDepositedEvent.selector
        });
    }
}

abstract contract RocketTokenRETH$OnTokensBurnedEvent {
    function onTokensBurnedEvent(EventContext memory ctx, RocketTokenRETH$TokensBurnedEventParams memory inputs) virtual external;

    function triggerOnTokensBurnedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes32(0x19783b34589160c168487dc7f9c51ae0bcefe67a47d6708fba90f6ce0366d3d1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokensBurnedEvent.selector
        });
    }
}

abstract contract RocketTokenRETH$OnTokensMintedEvent {
    function onTokensMintedEvent(EventContext memory ctx, RocketTokenRETH$TokensMintedEventParams memory inputs) virtual external;

    function triggerOnTokensMintedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes32(0x6155cfd0fd028b0ca77e8495a60cbe563e8bce8611f0aad6fedbdaafc05d44a2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokensMintedEvent.selector
        });
    }
}

abstract contract RocketTokenRETH$OnTransferEvent {
    function onTransferEvent(EventContext memory ctx, RocketTokenRETH$TransferEventParams memory inputs) virtual external;

    function triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes32(0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferEvent.selector
        });
    }
}

abstract contract RocketTokenRETH$OnAllowanceFunction {
    function onAllowanceFunction(FunctionContext memory ctx, RocketTokenRETH$AllowanceFunctionInputs memory inputs, RocketTokenRETH$AllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllowanceFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreAllowanceFunction {
    function preAllowanceFunction(PreFunctionContext memory ctx, RocketTokenRETH$AllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAllowanceFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnApproveFunction {
    function onApproveFunction(FunctionContext memory ctx, RocketTokenRETH$ApproveFunctionInputs memory inputs, RocketTokenRETH$ApproveFunctionOutputs memory outputs) virtual external;

    function triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApproveFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreApproveFunction {
    function preApproveFunction(PreFunctionContext memory ctx, RocketTokenRETH$ApproveFunctionInputs memory inputs) virtual external;

    function triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preApproveFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnBalanceOfFunction {
    function onBalanceOfFunction(FunctionContext memory ctx, RocketTokenRETH$BalanceOfFunctionInputs memory inputs, RocketTokenRETH$BalanceOfFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceOfFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreBalanceOfFunction {
    function preBalanceOfFunction(PreFunctionContext memory ctx, RocketTokenRETH$BalanceOfFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceOfFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnBurnFunction {
    function onBurnFunction(FunctionContext memory ctx, RocketTokenRETH$BurnFunctionInputs memory inputs) virtual external;

    function triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x42966c68),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBurnFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreBurnFunction {
    function preBurnFunction(PreFunctionContext memory ctx, RocketTokenRETH$BurnFunctionInputs memory inputs) virtual external;

    function triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x42966c68),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBurnFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnDecimalsFunction {
    function onDecimalsFunction(FunctionContext memory ctx, RocketTokenRETH$DecimalsFunctionOutputs memory outputs) virtual external;

    function triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDecimalsFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreDecimalsFunction {
    function preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDecimalsFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnDecreaseAllowanceFunction {
    function onDecreaseAllowanceFunction(FunctionContext memory ctx, RocketTokenRETH$DecreaseAllowanceFunctionInputs memory inputs, RocketTokenRETH$DecreaseAllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnDecreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xa457c2d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDecreaseAllowanceFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreDecreaseAllowanceFunction {
    function preDecreaseAllowanceFunction(PreFunctionContext memory ctx, RocketTokenRETH$DecreaseAllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreDecreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xa457c2d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDecreaseAllowanceFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnDepositExcessFunction {
    function onDepositExcessFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDepositExcessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x6c985a88),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositExcessFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreDepositExcessFunction {
    function preDepositExcessFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDepositExcessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x6c985a88),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositExcessFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnDepositExcessCollateralFunction {
    function onDepositExcessCollateralFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDepositExcessCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x188e0dc6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositExcessCollateralFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreDepositExcessCollateralFunction {
    function preDepositExcessCollateralFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDepositExcessCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x188e0dc6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositExcessCollateralFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnGetCollateralRateFunction {
    function onGetCollateralRateFunction(FunctionContext memory ctx, RocketTokenRETH$GetCollateralRateFunctionOutputs memory outputs) virtual external;

    function triggerOnGetCollateralRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x852185fc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetCollateralRateFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreGetCollateralRateFunction {
    function preGetCollateralRateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetCollateralRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x852185fc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetCollateralRateFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnGetEthValueFunction {
    function onGetEthValueFunction(FunctionContext memory ctx, RocketTokenRETH$GetEthValueFunctionInputs memory inputs, RocketTokenRETH$GetEthValueFunctionOutputs memory outputs) virtual external;

    function triggerOnGetEthValueFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x8b32fa23),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetEthValueFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreGetEthValueFunction {
    function preGetEthValueFunction(PreFunctionContext memory ctx, RocketTokenRETH$GetEthValueFunctionInputs memory inputs) virtual external;

    function triggerPreGetEthValueFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x8b32fa23),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetEthValueFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnGetExchangeRateFunction {
    function onGetExchangeRateFunction(FunctionContext memory ctx, RocketTokenRETH$GetExchangeRateFunctionOutputs memory outputs) virtual external;

    function triggerOnGetExchangeRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xe6aa216c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetExchangeRateFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreGetExchangeRateFunction {
    function preGetExchangeRateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetExchangeRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xe6aa216c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetExchangeRateFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnGetRethValueFunction {
    function onGetRethValueFunction(FunctionContext memory ctx, RocketTokenRETH$GetRethValueFunctionInputs memory inputs, RocketTokenRETH$GetRethValueFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRethValueFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x4346f03e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRethValueFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreGetRethValueFunction {
    function preGetRethValueFunction(PreFunctionContext memory ctx, RocketTokenRETH$GetRethValueFunctionInputs memory inputs) virtual external;

    function triggerPreGetRethValueFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x4346f03e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRethValueFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnGetTotalCollateralFunction {
    function onGetTotalCollateralFunction(FunctionContext memory ctx, RocketTokenRETH$GetTotalCollateralFunctionOutputs memory outputs) virtual external;

    function triggerOnGetTotalCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xd6eb5910),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetTotalCollateralFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreGetTotalCollateralFunction {
    function preGetTotalCollateralFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetTotalCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xd6eb5910),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetTotalCollateralFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnIncreaseAllowanceFunction {
    function onIncreaseAllowanceFunction(FunctionContext memory ctx, RocketTokenRETH$IncreaseAllowanceFunctionInputs memory inputs, RocketTokenRETH$IncreaseAllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnIncreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x39509351),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIncreaseAllowanceFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreIncreaseAllowanceFunction {
    function preIncreaseAllowanceFunction(PreFunctionContext memory ctx, RocketTokenRETH$IncreaseAllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreIncreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x39509351),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIncreaseAllowanceFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnMintFunction {
    function onMintFunction(FunctionContext memory ctx, RocketTokenRETH$MintFunctionInputs memory inputs) virtual external;

    function triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMintFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreMintFunction {
    function preMintFunction(PreFunctionContext memory ctx, RocketTokenRETH$MintFunctionInputs memory inputs) virtual external;

    function triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMintFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, RocketTokenRETH$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnSymbolFunction {
    function onSymbolFunction(FunctionContext memory ctx, RocketTokenRETH$SymbolFunctionOutputs memory outputs) virtual external;

    function triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSymbolFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreSymbolFunction {
    function preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSymbolFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnTotalSupplyFunction {
    function onTotalSupplyFunction(FunctionContext memory ctx, RocketTokenRETH$TotalSupplyFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalSupplyFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreTotalSupplyFunction {
    function preTotalSupplyFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalSupplyFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnTransferFunction {
    function onTransferFunction(FunctionContext memory ctx, RocketTokenRETH$TransferFunctionInputs memory inputs, RocketTokenRETH$TransferFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreTransferFunction {
    function preTransferFunction(PreFunctionContext memory ctx, RocketTokenRETH$TransferFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnTransferFromFunction {
    function onTransferFromFunction(FunctionContext memory ctx, RocketTokenRETH$TransferFromFunctionInputs memory inputs, RocketTokenRETH$TransferFromFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreTransferFromFunction {
    function preTransferFromFunction(PreFunctionContext memory ctx, RocketTokenRETH$TransferFromFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$OnVersionFunction {
    function onVersionFunction(FunctionContext memory ctx, RocketTokenRETH$VersionFunctionOutputs memory outputs) virtual external;

    function triggerOnVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVersionFunction.selector
        });
    }
}

abstract contract RocketTokenRETH$PreVersionFunction {
    function preVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "RocketTokenRETH",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVersionFunction.selector
        });
    }
}

contract RocketTokenRETH$EmitAllEvents is
  RocketTokenRETH$OnApprovalEvent,
RocketTokenRETH$OnEtherDepositedEvent,
RocketTokenRETH$OnTokensBurnedEvent,
RocketTokenRETH$OnTokensMintedEvent,
RocketTokenRETH$OnTransferEvent
{
  event Approval(address owner, address spender, uint256 value);
event EtherDeposited(address from, uint256 amount, uint256 time);
event TokensBurned(address from, uint256 amount, uint256 ethAmount, uint256 time);
event TokensMinted(address to, uint256 amount, uint256 ethAmount, uint256 time);
event Transfer(address from, address to, uint256 value);

  function onApprovalEvent(EventContext memory ctx, RocketTokenRETH$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(inputs.owner, inputs.spender, inputs.value);
  }
function onEtherDepositedEvent(EventContext memory ctx, RocketTokenRETH$EtherDepositedEventParams memory inputs) virtual external override {
    emit EtherDeposited(inputs.from, inputs.amount, inputs.time);
  }
function onTokensBurnedEvent(EventContext memory ctx, RocketTokenRETH$TokensBurnedEventParams memory inputs) virtual external override {
    emit TokensBurned(inputs.from, inputs.amount, inputs.ethAmount, inputs.time);
  }
function onTokensMintedEvent(EventContext memory ctx, RocketTokenRETH$TokensMintedEventParams memory inputs) virtual external override {
    emit TokensMinted(inputs.to, inputs.amount, inputs.ethAmount, inputs.time);
  }
function onTransferEvent(EventContext memory ctx, RocketTokenRETH$TransferEventParams memory inputs) virtual external override {
    emit Transfer(inputs.from, inputs.to, inputs.value);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](5);
    triggers[0] = this.triggerOnApprovalEvent();
    triggers[1] = this.triggerOnEtherDepositedEvent();
    triggers[2] = this.triggerOnTokensBurnedEvent();
    triggers[3] = this.triggerOnTokensMintedEvent();
    triggers[4] = this.triggerOnTransferEvent();
    return triggers;
  }
}