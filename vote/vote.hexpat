struct Vote {
    u64 numberOfSlots;
    u64 slots[numberOfSlots];
    char hash[32];
    u8 hasTimeStamp;
    if (hasTimeStamp == 1) {
        u64 timeStamp;
    }
};

struct voteData {
    u32 instructionEnum;
    Vote vote;
};

voteData struct_at_0x00 @ 0x00;



