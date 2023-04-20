enum DataEnum: u8 {
    Pubkey = 0x00,
    Seeds = 0x01,
    MerkleProof = 0x02,
    Number = 0x03,
};

struct PubkeyStruct {
    char pubkey[32];
};

struct Seed {
    u32 vecLen;
    u8 bytes[vecLen];
};

struct SeedVec {
    u32 lengthOfVec;
    Seed seeds[lengthOfVec];
};

struct MerkleProof {
    
};

struct Number {
    u64 number;
};


struct PayloadData {
    u32 stringLength;
    char string[stringLength];
    DataEnum payloadEnum;
    
    if (payloadEnum == DataEnum::Pubkey) {
        PubkeyStruct pubKey;
    } else if (payloadEnum == DataEnum::Seeds) {
        SeedVec seedVec;
    } else if (payloadEnum == DataEnum::MerkleProof) {
        MerkleProof merkleProof;
    } else if (payloadEnum == DataEnum::Number) {
        Number number;
    }
};

struct logInstructionData {
    u8 discriminant;
    // padding[3];
    u8 dataEnum;
    u32 lengthOperation;
    char operationString[lengthOperation];
    u32 mapSize;
    PayloadData payloadMap[mapSize];
    bool updateRuleState;
    u8 ruleSetRevisionOption;
    
    if (ruleSetRevisionOption == 1) {
        u64 ruleSetRevision;
    }
};


logInstructionData struct_at_0x00 @ 0x00;
