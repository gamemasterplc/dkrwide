/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x80063A90 */

#include "types.h"
#include "macros.h"

/* Size: 0x0C bytes */
typedef struct unk80063BA0 {
    s16 unk0;
    s16 unk2;
    s32 unk4;
    u8 unk8;
    u8 unk9;
    u8 unkA;
} unk80063BA0;

void func_80063A90(u32 arg0, u8 arg1) {
    s32 unusedVariable;
    unk80063BA0 unknownStruct;
    unknownStruct.unk0 = 2;
    unknownStruct.unk4 = 0;
    unknownStruct.unk8 = 0xB0;
    unknownStruct.unk9 = 0x5F;
    unknownStruct.unkA = arg1;
    alEvtqPostEvent(arg0 + 0x48, &unknownStruct, 0);
}


