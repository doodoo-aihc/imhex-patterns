enum MarketEventEnum: u8 {
    Uninitialized = 0x00,
    Header = 0x01,
    Fill = 0x02,
    Place = 0x03,
    Reduce = 0x04,
    Evict = 0x05,
    FillSummary = 0x06,
    Fee = 0x07
};

struct FillEvent {
    u16 index;
    char makerIdPubkey[32];
    u64 orderSequenceNumber;
    u64 priceInTicks;
    u64 basseLotsFilled;
    u64 baseLotsRemaining;
};

struct PlaceEvent {
    u16 index;
    u64 orderSequenceNumber;
    u64 clientOrderId;
    u64 priceInTicks;
    u64 baseLotsPlaced;
};

struct ReduceEvent {
    u16 index;
    u64 orderSequenceNumber;
    u64 priceInTicks;
    u64 baseLotsRemoved;
    u64 baseLotsRemaining;
};

struct EvictEvent {
    u16 index;
    char makerIdPubkey[32];
    u64 orderSequenceNumber;
    u64 priceInTicks;
    u64 baseLotsEvicted;
};

struct FillSummarySummary {
    u16 index;
    u128 clientOrderId;
    u64 totalBaseLotsFilled;
    u64 totalQuoteLotsFilled;
    u64 totalFeeInQuoteLots;
};

struct FeeEvent {
    u16 index;
    u64 feesCollectedInQuoteLots;
};

// https://github.com/Ellipsis-Labs/phoenix-sdk/blob/master/typescript/phoenix-sdk/src/types/AuditLogHeader.ts#L27
struct headerData {
    u8 headerEnum;
    u8 instruction;
    u64 sequenceNumber;
    s64 timestamp;
    u64 slot;
    char marketPubKey[32];
    char signerPubKey[32];
    u16 totalEvents; 
};

struct eventData {
    MarketEventEnum eventEnum;
    
    if (eventEnum == MarketEventEnum::Fill) {
        FillEvent fillEvent;
    } else if (eventEnum == MarketEventEnum::Place) {
        PlaceEvent placeEvent;
    } else if (eventEnum == MarketEventEnum::Reduce) {
        ReduceEvent reduceEvent;
    } else if (eventEnum == MarketEventEnum::Evict) {
        EvictEvent evictEvent;
    } else if (eventEnum == MarketEventEnum::FillSummary) {
        FillSummarySummary fillSummaryEvent;
    } else if (eventEnum == MarketEventEnum::Fee) {
        FeeEvent feeEvent;
    }
};

struct logInstructionData {
    u8 discriminant;
    // padding[3];
    headerData logHeader;
    eventData data[3];
};


logInstructionData struct_at_0x00 @ 0x00;


