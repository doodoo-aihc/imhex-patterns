struct executeSaleV2 {
    u64 anchor_stuff;
    u8 escrowPaymentBump;
    u8 freeTradeStateBump;
    u64 buyerPrice;
    u64 tokenSize;
    s64 buyerExpiry;
    s64 sellerExpiry;
    u16 makerFeeBp;
    u16 takerFeeBp;
};

executeSaleV2 struct_at_0x00 @ 0x00;
