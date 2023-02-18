struct CancelOrderParams {
    u8 sideEnum;
    // padding[3];
    u64 priceInTicks;
    u64 orderSequenceNumber;
};

struct storeInstructionData {
    u8 discriminant;
    u32 numberOfItems;
    // padding[3];
    CancelOrderParams test[4];
};


storeInstructionData struct_at_0x00 @ 0x00;

