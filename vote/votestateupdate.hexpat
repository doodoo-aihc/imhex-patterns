struct Lockout {
    u64 slot;
    u32 confirmationCounts;
};

struct VoteStatUpdate {
    u32 instructionEnum;
    u64 numberOfSlots;
    Lockout lockout[numberOfSlots];
    u8 hasRoot;
    if (hasRoot == 0x01) {
        u64 root;
    }
    char hash[32];
    u8 hasTimeStamp;
    if (hasTimeStamp == 0x01) {
        u64 timeStamp;
    }
};

VoteStatUpdate struct_at_0x00 @ 0x00;
