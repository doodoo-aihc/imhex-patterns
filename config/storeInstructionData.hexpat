struct vecPubKey {
    char publicKey[32];
    bool signer;
};


struct storeInstructionData {
    u8 instructionEnum;
    vecPubKey keys[2];
    u64 max_space;
    char data[];
};


storeInstructionData struct_at_0x00 @ 0x00;

