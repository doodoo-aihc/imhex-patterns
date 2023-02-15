struct Authorized {
   char staker[32];
   char withdrawer[32];
};

struct Lockup {
   s64 unix_timestamp;
   u64 epoch;
   char custodian[32];
};

struct initializeStakeData {
    u32 instructionEnum;
    Authorized authorized;
    Lockup lockup;
};

initializeStakeData struct_at_0x00 @ 0x00;


