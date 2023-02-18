enum SwapEnum: u8 {
    PostOnly = 0x00,
    Limit = 0x01,
    ImmediateOrCancel = 0x02,
};

struct ImmediateOrCancelParams {
    u8 sideEnum;
    u8 cOptionPriceInTicks;
    if (cOptionPriceInTicks > 0) {
        u64 priceInTicks;
    }
    u64 numBaseLots;
    u64 numQuoteLots;
    u64 minBaseLotsToFill;
    u64 minQuoteLotsToFill;
    u8 selfTradeBehavior;
    u8 cOptionMatchLimit;
    if (cOptionMatchLimit > 0) {
        u64 matchLimit;
    }
    u128 clientOrderId;
    u8 useOnlyDepositedFundsBool;  
};

struct PostOnlyParams {
    u8 sideEnum;
    u64 priceInTicks;
    u64 numBaseLots;   
    u128 clientOrderId;
    u8 rejectPostOnlyBool;
    u8 useOnlyDepositedFundsBool;
};

struct LimitParams {
     u8 sideEnum;
     u64 priceInTicks;
     u64 numBaseLots;
     u8 selfTradeBehavior;
     u8 cOptionMatchLimit;
     u64 matchLimit;
     u128 clientOrderId;
     u8 useOnlyDepositedFundsBool;   
};

struct swapInstructionData {
    u8 discriminant;
    SwapEnum swapEnum;
    
    if (swapEnum == SwapEnum::PostOnly) {
        PostOnlyParams postOnlyParams;
    } else if (swapEnum == SwapEnum::Limit) {
        LimitParams limitOnlyParams;
    } else if (swapEnum == SwapEnum::ImmediateOrCancel) {
        ImmediateOrCancelParams test;       
    }
    // padding[3];
};


swapInstructionData struct_at_0x00 @ 0x00;




