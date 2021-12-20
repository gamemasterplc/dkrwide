/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x8006F510 */

.section .text

.include "macros.inc"

.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

.include "asm/unknown_070110/func_8006F510.s"
.include "asm/unknown_070110/func_8006F53C.s"
.include "asm/unknown_070110/func_8006F564.s"
.include "asm/unknown_070110/func_8006F5E0.s"
.include "asm/unknown_070110/guMtxXFMF.s"
.include "asm/unknown_070110/func_8006F6EC.s"
.include "asm/unknown_070110/func_8006F768.s"
.include "asm/unknown_070110/func_8006F870.s"
.include "asm/unknown_070110/rng.s"
.include "asm/unknown_070110/func_8006F9B8.s"
.include "asm/unknown_070110/func_8006FB60.s"
.include "asm/unknown_070110/func_8006FC30.s"
.include "asm/unknown_070110/func_8006FE04.s"
.include "asm/unknown_070110/func_8006FE30.s"
.include "asm/unknown_070110/func_8006FE74.s"
.include "asm/unknown_070110/func_80070130.s"
.include "asm/unknown_070110/func_800701E4.s"
.include "asm/unknown_070110/func_80070320.s"
.include "asm/unknown_070110/func_800703D8.s"
.include "asm/unknown_070110/func_80070490.s"
.include "asm/unknown_070110/func_800704F0.s"
.include "asm/unknown_070110/func_800705F8.s"
.include "asm/unknown_070110/func_80070638.s"
.include "asm/unknown_070110/func_8007066C.s"
.include "asm/unknown_070110/func_80070750.s"
.include "asm/unknown_070110/func_800707C4.s"
.include "asm/unknown_070110/func_800707F8.s"
.include "asm/unknown_070110/func_8007082C.s"
.include "asm/unknown_070110/func_80070890.s"
.include "asm/unknown_070110/func_80070A2C.s"
.include "asm/unknown_070110/func_80070B04.s"

.section .data

glabel D_800DD430
.word 0x00000000

glabel D_800DD434
.word 0x5141564D # Some magic number related to RNG?

glabel D_800DD438
.word 0x5141564D

glabel D_800DD43C
.half 0x0000, 0x0032, 0x0065, 0x0097, 0x00C9, 0x00FB, 0x012E, 0x0160, 0x0192, 0x01C4, 0x01F7, 0x0229, 0x025B, 0x028D, 0x02C0, 0x02F2, 0x0324, 0x0356, 0x0389, 0x03BB, 0x03ED, 0x041F, 0x0452, 0x0484, 0x04B6, 0x04E8, 0x051B, 0x054D, 0x057F, 0x05B1, 0x05E3, 0x0616, 0x0648, 0x067A, 0x06AC, 0x06DE, 0x0711, 0x0743, 0x0775, 0x07A7, 0x07D9, 0x080C, 0x083E, 0x0870, 0x08A2, 0x08D4, 0x0906, 0x0938, 0x096B, 0x099D, 0x09CF, 0x0A01, 0x0A33, 0x0A65, 0x0A97, 0x0AC9, 0x0AFB, 0x0B2D, 0x0B60, 0x0B92, 0x0BC4, 0x0BF6, 0x0C28, 0x0C5A, 0x0C8C, 0x0CBE, 0x0CF0, 0x0D22, 0x0D54, 0x0D86, 0x0DB8, 0x0DEA, 0x0E1C, 0x0E4E, 0x0E80, 0x0EB2, 0x0EE4, 0x0F15, 0x0F47, 0x0F79, 0x0FAB, 0x0FDD, 0x100F, 0x1041, 0x1073, 0x10A4, 0x10D6, 0x1108, 0x113A, 0x116C, 0x119E, 0x11CF, 0x1201, 0x1233, 0x1265, 0x1296, 0x12C8, 0x12FA, 0x132B, 0x135D, 0x138F, 0x13C1, 0x13F2, 0x1424, 0x1455, 0x1487, 0x14B9, 0x14EA, 0x151C, 0x154D, 0x157F, 0x15B1, 0x15E2, 0x1614, 0x1645, 0x1677, 0x16A8, 0x16DA, 0x170B, 0x173C, 0x176E, 0x179F, 0x17D1, 0x1802, 0x1833, 0x1865, 0x1896, 0x18C7, 0x18F9, 0x192A, 0x195B, 0x198D, 0x19BE, 0x19EF, 0x1A20, 0x1A51, 0x1A83, 0x1AB4, 0x1AE5, 0x1B16, 0x1B47, 0x1B78, 0x1BA9, 0x1BDA, 0x1C0C, 0x1C3D, 0x1C6E, 0x1C9F, 0x1CD0, 0x1D01, 0x1D31, 0x1D62, 0x1D93, 0x1DC4, 0x1DF5, 0x1E26, 0x1E57, 0x1E88, 0x1EB8, 0x1EE9, 0x1F1A, 0x1F4B, 0x1F7B, 0x1FAC, 0x1FDD, 0x200E, 0x203E, 0x206F, 0x209F, 0x20D0, 0x2101, 0x2131, 0x2162, 0x2192, 0x21C3, 0x21F3, 0x2224, 0x2254, 0x2284, 0x22B5, 0x22E5, 0x2316, 0x2346, 0x2376, 0x23A7, 0x23D7, 0x2407, 0x2437, 0x2467, 0x2498, 0x24C8, 0x24F8, 0x2528, 0x2558, 0x2588, 0x25B8, 0x25E8, 0x2618, 0x2648, 0x2678, 0x26A8, 0x26D8, 0x2708, 0x2738, 0x2768, 0x2797, 0x27C7, 0x27F7, 0x2827, 0x2856, 0x2886, 0x28B6, 0x28E5, 0x2915, 0x2945, 0x2974, 0x29A4, 0x29D3, 0x2A03, 0x2A32, 0x2A62, 0x2A91, 0x2AC1, 0x2AF0, 0x2B1F, 0x2B4F, 0x2B7E, 0x2BAD, 0x2BDC, 0x2C0C, 0x2C3B, 0x2C6A, 0x2C99, 0x2CC8, 0x2CF7, 0x2D26, 0x2D55, 0x2D84, 0x2DB3, 0x2DE2, 0x2E11, 0x2E40, 0x2E6F, 0x2E9E, 0x2ECC, 0x2EFB, 0x2F2A, 0x2F59, 0x2F87, 0x2FB6, 0x2FE5, 0x3013, 0x3042, 0x3070, 0x309F, 0x30CD, 0x30FC, 0x312A, 0x3159, 0x3187, 0x31B5, 0x31E4, 0x3212, 0x3240, 0x326E, 0x329D, 0x32CB, 0x32F9, 0x3327, 0x3355, 0x3383, 0x33B1, 0x33DF, 0x340D, 0x343B, 0x3469, 0x3497, 0x34C4, 0x34F2, 0x3520, 0x354E, 0x357B, 0x35A9, 0x35D7, 0x3604, 0x3632, 0x365F, 0x368D, 0x36BA, 0x36E8, 0x3715, 0x3742, 0x3770, 0x379D, 0x37CA, 0x37F7, 0x3825, 0x3852, 0x387F, 0x38AC, 0x38D9, 0x3906, 0x3933, 0x3960, 0x398D, 0x39BA, 0x39E7, 0x3A13, 0x3A40, 0x3A6D, 0x3A9A, 0x3AC6, 0x3AF3, 0x3B20, 0x3B4C, 0x3B79, 0x3BA5, 0x3BD2, 0x3BFE, 0x3C2A, 0x3C57, 0x3C83, 0x3CAF, 0x3CDC, 0x3D08, 0x3D34, 0x3D60, 0x3D8C, 0x3DB8, 0x3DE4, 0x3E10, 0x3E3C, 0x3E68, 0x3E94, 0x3EC0, 0x3EEC, 0x3F17, 0x3F43, 0x3F6F, 0x3F9A, 0x3FC6, 0x3FF1, 0x401D, 0x4048, 0x4074, 0x409F, 0x40CB, 0x40F6, 0x4121, 0x414D, 0x4178, 0x41A3, 0x41CE, 0x41F9, 0x4224, 0x424F, 0x427A, 0x42A5, 0x42D0, 0x42FB, 0x4326, 0x4351, 0x437B, 0x43A6, 0x43D1, 0x43FB, 0x4426, 0x4450, 0x447B, 0x44A5, 0x44D0, 0x44FA, 0x4524, 0x454F, 0x4579, 0x45A3, 0x45CD, 0x45F7, 0x4621, 0x464B, 0x4675, 0x469F, 0x46C9, 0x46F3, 0x471D, 0x4747, 0x4770, 0x479A, 0x47C4, 0x47ED, 0x4817, 0x4840, 0x486A, 0x4893, 0x48BD, 0x48E6, 0x490F, 0x4939, 0x4962, 0x498B, 0x49B4, 0x49DD, 0x4A06, 0x4A2F, 0x4A58, 0x4A81, 0x4AAA, 0x4AD3, 0x4AFB, 0x4B24, 0x4B4D, 0x4B75, 0x4B9E, 0x4BC7, 0x4BEF, 0x4C17, 0x4C40, 0x4C68, 0x4C91, 0x4CB9, 0x4CE1, 0x4D09, 0x4D31, 0x4D59, 0x4D81, 0x4DA9, 0x4DD1, 0x4DF9, 0x4E21, 0x4E49, 0x4E71, 0x4E98, 0x4EC0, 0x4EE8, 0x4F0F, 0x4F37, 0x4F5E, 0x4F85, 0x4FAD, 0x4FD4, 0x4FFB, 0x5023, 0x504A, 0x5071, 0x5098, 0x50BF, 0x50E6, 0x510D, 0x5134, 0x515B, 0x5181, 0x51A8, 0x51CF, 0x51F5, 0x521C, 0x5243, 0x5269, 0x5290, 0x52B6, 0x52DC, 0x5303, 0x5329, 0x534F, 0x5375, 0x539B, 0x53C1, 0x53E7, 0x540D, 0x5433, 0x5459, 0x547F, 0x54A4, 0x54CA, 0x54F0, 0x5515, 0x553B, 0x5560, 0x5586, 0x55AB, 0x55D0, 0x55F6, 0x561B, 0x5640, 0x5665, 0x568A, 0x56AF, 0x56D4, 0x56F9, 0x571E, 0x5743, 0x5767, 0x578C, 0x57B1, 0x57D5, 0x57FA, 0x581E, 0x5843, 0x5867, 0x588C, 0x58B0, 0x58D4, 0x58F8, 0x591C, 0x5940, 0x5964, 0x5988, 0x59AC, 0x59D0, 0x59F4, 0x5A18, 0x5A3B, 0x5A5F, 0x5A82, 0x5AA6, 0x5AC9, 0x5AED, 0x5B10, 0x5B34, 0x5B57, 0x5B7A, 0x5B9D, 0x5BC0, 0x5BE3, 0x5C06, 0x5C29, 0x5C4C, 0x5C6F, 0x5C91, 0x5CB4, 0x5CD7, 0x5CF9, 0x5D1C, 0x5D3E, 0x5D61, 0x5D83, 0x5DA5, 0x5DC8, 0x5DEA, 0x5E0C, 0x5E2E, 0x5E50, 0x5E72, 0x5E94, 0x5EB6, 0x5ED7, 0x5EF9, 0x5F1B, 0x5F3C, 0x5F5E, 0x5F80, 0x5FA1, 0x5FC2, 0x5FE4, 0x6005, 0x6026, 0x6047, 0x6068, 0x6089, 0x60AA, 0x60CB, 0x60EC, 0x610D, 0x612E, 0x614E, 0x616F, 0x6190, 0x61B0, 0x61D1, 0x61F1, 0x6211, 0x6232, 0x6252, 0x6272, 0x6292, 0x62B2, 0x62D2, 0x62F2, 0x6312, 0x6332, 0x6351, 0x6371, 0x6391, 0x63B0, 0x63D0, 0x63EF, 0x640F, 0x642E, 0x644D, 0x646C, 0x648B, 0x64AB, 0x64CA, 0x64E9, 0x6507, 0x6526, 0x6545, 0x6564, 0x6582, 0x65A1, 0x65C0, 0x65DE, 0x65FC, 0x661B, 0x6639, 0x6657, 0x6675, 0x6693, 0x66B2, 0x66D0, 0x66ED, 0x670B, 0x6729, 0x6747, 0x6764, 0x6782, 0x67A0, 0x67BD, 0x67DA, 0x67F8, 0x6815, 0x6832, 0x6850, 0x686D, 0x688A, 0x68A7, 0x68C4, 0x68E0, 0x68FD, 0x691A, 0x6937, 0x6953, 0x6970, 0x698C, 0x69A9, 0x69C5, 0x69E1, 0x69FD, 0x6A1A, 0x6A36, 0x6A52, 0x6A6E, 0x6A89, 0x6AA5, 0x6AC1, 0x6ADD, 0x6AF8, 0x6B14, 0x6B30, 0x6B4B, 0x6B66, 0x6B82, 0x6B9D, 0x6BB8, 0x6BD3, 0x6BEE, 0x6C09, 0x6C24, 0x6C3F, 0x6C5A, 0x6C75, 0x6C8F, 0x6CAA, 0x6CC4, 0x6CDF, 0x6CF9, 0x6D14, 0x6D2E, 0x6D48, 0x6D62, 0x6D7C, 0x6D96, 0x6DB0, 0x6DCA, 0x6DE4, 0x6DFE, 0x6E17, 0x6E31, 0x6E4A, 0x6E64, 0x6E7D, 0x6E97, 0x6EB0, 0x6EC9, 0x6EE2, 0x6EFB, 0x6F14, 0x6F2D, 0x6F46, 0x6F5F, 0x6F78, 0x6F90, 0x6FA9, 0x6FC2, 0x6FDA, 0x6FF2, 0x700B, 0x7023, 0x703B, 0x7053, 0x706B, 0x7083, 0x709B, 0x70B3, 0x70CB, 0x70E3, 0x70FA, 0x7112, 0x712A, 0x7141, 0x7158, 0x7170, 0x7187, 0x719E, 0x71B5, 0x71CC, 0x71E3, 0x71FA, 0x7211, 0x7228, 0x723F, 0x7255, 0x726C, 0x7282, 0x7299, 0x72AF, 0x72C5, 0x72DC, 0x72F2, 0x7308, 0x731E, 0x7334, 0x734A, 0x735F, 0x7375, 0x738B, 0x73A0, 0x73B6, 0x73CB, 0x73E1, 0x73F6, 0x740B, 0x7421, 0x7436, 0x744B, 0x7460, 0x7475, 0x7489, 0x749E, 0x74B3, 0x74C7, 0x74DC, 0x74F0, 0x7505, 0x7519, 0x752D, 0x7542, 0x7556, 0x756A, 0x757E, 0x7592, 0x75A6, 0x75B9, 0x75CD, 0x75E1, 0x75F4, 0x7608, 0x761B, 0x762E, 0x7642, 0x7655, 0x7668, 0x767B, 0x768E, 0x76A1, 0x76B4, 0x76C7, 0x76D9, 0x76EC, 0x76FE, 0x7711, 0x7723, 0x7736, 0x7748, 0x775A, 0x776C, 0x777E, 0x7790, 0x77A2, 0x77B4, 0x77C6, 0x77D8, 0x77E9, 0x77FB, 0x780C, 0x781E, 0x782F, 0x7840, 0x7851, 0x7863, 0x7874, 0x7885, 0x7895, 0x78A6, 0x78B7, 0x78C8, 0x78D8, 0x78E9, 0x78F9, 0x790A, 0x791A, 0x792A, 0x793A, 0x794A, 0x795B, 0x796A, 0x797A, 0x798A, 0x799A, 0x79AA, 0x79B9, 0x79C9, 0x79D8, 0x79E7, 0x79F7, 0x7A06, 0x7A15, 0x7A24, 0x7A33, 0x7A42, 0x7A51, 0x7A60, 0x7A6E, 0x7A7D, 0x7A8C, 0x7A9A, 0x7AA8, 0x7AB7, 0x7AC5, 0x7AD3, 0x7AE1, 0x7AEF, 0x7AFD, 0x7B0B, 0x7B19, 0x7B27, 0x7B34, 0x7B42, 0x7B50, 0x7B5D, 0x7B6A, 0x7B78, 0x7B85, 0x7B92, 0x7B9F, 0x7BAC, 0x7BB9, 0x7BC6, 0x7BD3, 0x7BDF, 0x7BEC, 0x7BF9, 0x7C05, 0x7C11, 0x7C1E, 0x7C2A, 0x7C36, 0x7C42, 0x7C4E, 0x7C5A, 0x7C66, 0x7C72, 0x7C7E, 0x7C89, 0x7C95, 0x7CA0, 0x7CAC, 0x7CB7, 0x7CC2, 0x7CCE, 0x7CD9, 0x7CE4, 0x7CEF, 0x7CFA, 0x7D05, 0x7D0F, 0x7D1A, 0x7D25, 0x7D2F, 0x7D3A, 0x7D44, 0x7D4E, 0x7D58, 0x7D63, 0x7D6D, 0x7D77, 0x7D81, 0x7D8A, 0x7D94, 0x7D9E, 0x7DA7, 0x7DB1, 0x7DBA, 0x7DC4, 0x7DCD, 0x7DD6, 0x7DE0, 0x7DE9, 0x7DF2, 0x7DFB, 0x7E03, 0x7E0C, 0x7E15, 0x7E1E, 0x7E26, 0x7E2F, 0x7E37, 0x7E3F, 0x7E48, 0x7E50, 0x7E58, 0x7E60, 0x7E68, 0x7E70, 0x7E78, 0x7E7F, 0x7E87, 0x7E8E, 0x7E96, 0x7E9D, 0x7EA5, 0x7EAC, 0x7EB3, 0x7EBA, 0x7EC1, 0x7EC8, 0x7ECF, 0x7ED6, 0x7EDD, 0x7EE3, 0x7EEA, 0x7EF0, 0x7EF7, 0x7EFD, 0x7F03, 0x7F0A, 0x7F10, 0x7F16, 0x7F1C, 0x7F22, 0x7F27, 0x7F2D, 0x7F33, 0x7F38, 0x7F3E, 0x7F43, 0x7F49, 0x7F4E, 0x7F53, 0x7F58, 0x7F5D, 0x7F62, 0x7F67, 0x7F6C, 0x7F71, 0x7F75, 0x7F7A, 0x7F7E, 0x7F83, 0x7F87, 0x7F8B, 0x7F90, 0x7F94, 0x7F98, 0x7F9C, 0x7FA0, 0x7FA3, 0x7FA7, 0x7FAB, 0x7FAE, 0x7FB2, 0x7FB5, 0x7FB9, 0x7FBC, 0x7FBF, 0x7FC2, 0x7FC5, 0x7FC8, 0x7FCB, 0x7FCE, 0x7FD1, 0x7FD3, 0x7FD6, 0x7FD9, 0x7FDB, 0x7FDD, 0x7FE0, 0x7FE2, 0x7FE4, 0x7FE6, 0x7FE8, 0x7FEA, 0x7FEC, 0x7FED, 0x7FEF, 0x7FF1, 0x7FF2, 0x7FF4, 0x7FF5, 0x7FF6, 0x7FF7, 0x7FF8, 0x7FF9, 0x7FFA, 0x7FFB, 0x7FFC, 0x7FFD, 0x7FFE, 0x7FFE, 0x7FFF, 0x7FFF, 0x7FFF, 0x8000, 0x8000, 0x8000, 0x8000

glabel D_800DDC3E
.half 0x0000, 0x000A, 0x0014, 0x001F, 0x0029, 0x0033, 0x003D, 0x0047, 0x0051, 0x005C, 0x0066, 0x0070, 0x007A, 0x0084, 0x008F, 0x0099, 0x00A3, 0x00AD, 0x00B7, 0x00C2, 0x00CC, 0x00D6, 0x00E0, 0x00EA, 0x00F4, 0x00FF, 0x0109, 0x0113, 0x011D, 0x0127, 0x0131, 0x013C, 0x0146, 0x0150, 0x015A, 0x0164, 0x016F, 0x0179, 0x0183, 0x018D, 0x0197, 0x01A1, 0x01AC, 0x01B6, 0x01C0, 0x01CA, 0x01D4, 0x01DE, 0x01E9, 0x01F3, 0x01FD, 0x0207, 0x0211, 0x021B, 0x0226, 0x0230, 0x023A, 0x0244, 0x024E, 0x0258, 0x0262, 0x026D, 0x0277, 0x0281, 0x028B, 0x0295, 0x029F, 0x02A9, 0x02B4, 0x02BE, 0x02C8, 0x02D2, 0x02DC, 0x02E6, 0x02F0, 0x02FB, 0x0305, 0x030F, 0x0319, 0x0323, 0x032D, 0x0337, 0x0341, 0x034C, 0x0356, 0x0360, 0x036A, 0x0374, 0x037E, 0x0388, 0x0392, 0x039C, 0x03A7, 0x03B1, 0x03BB, 0x03C5, 0x03CF, 0x03D9, 0x03E3, 0x03ED, 0x03F7, 0x0401, 0x040C, 0x0416, 0x0420, 0x042A, 0x0434, 0x043E, 0x0448, 0x0452, 0x045C, 0x0466, 0x0470, 0x047A, 0x0484, 0x048E, 0x0499, 0x04A3, 0x04AD, 0x04B7, 0x04C1, 0x04CB, 0x04D5, 0x04DF, 0x04E9, 0x04F3, 0x04FD, 0x0507, 0x0511, 0x051B, 0x0525, 0x052F, 0x0539, 0x0543, 0x054D, 0x0557, 0x0561, 0x056B, 0x0575, 0x057F, 0x0589, 0x0593, 0x059D, 0x05A7, 0x05B1, 0x05BB, 0x05C5, 0x05CF, 0x05D9, 0x05E3, 0x05ED, 0x05F7, 0x0601, 0x060B, 0x0615, 0x061F, 0x0629, 0x0633, 0x063D, 0x0647, 0x0651, 0x065B, 0x0665, 0x066E, 0x0678, 0x0682, 0x068C, 0x0696, 0x06A0, 0x06AA, 0x06B4, 0x06BE, 0x06C8, 0x06D2, 0x06DC, 0x06E5, 0x06EF, 0x06F9, 0x0703, 0x070D, 0x0717, 0x0721, 0x072B, 0x0735, 0x073E, 0x0748, 0x0752, 0x075C, 0x0766, 0x0770, 0x077A, 0x0783, 0x078D, 0x0797, 0x07A1, 0x07AB, 0x07B5, 0x07BE, 0x07C8, 0x07D2, 0x07DC, 0x07E6, 0x07EF, 0x07F9, 0x0803, 0x080D, 0x0817, 0x0820, 0x082A, 0x0834, 0x083E, 0x0848, 0x0851, 0x085B, 0x0865, 0x086F, 0x0878, 0x0882, 0x088C, 0x0896, 0x089F, 0x08A9, 0x08B3, 0x08BD, 0x08C6, 0x08D0, 0x08DA, 0x08E3, 0x08ED, 0x08F7, 0x0901, 0x090A, 0x0914, 0x091E, 0x0927, 0x0931, 0x093B, 0x0944, 0x094E, 0x0958, 0x0961, 0x096B, 0x0975, 0x097E, 0x0988, 0x0992, 0x099B, 0x09A5, 0x09AE, 0x09B8, 0x09C2, 0x09CB, 0x09D5, 0x09DE, 0x09E8, 0x09F2, 0x09FB, 0x0A05, 0x0A0E, 0x0A18, 0x0A22, 0x0A2B, 0x0A35, 0x0A3E, 0x0A48, 0x0A51, 0x0A5B, 0x0A64, 0x0A6E, 0x0A77, 0x0A81, 0x0A8B, 0x0A94, 0x0A9E, 0x0AA7, 0x0AB1, 0x0ABA, 0x0AC4, 0x0ACD, 0x0AD7, 0x0AE0, 0x0AE9, 0x0AF3, 0x0AFC, 0x0B06, 0x0B0F, 0x0B19, 0x0B22, 0x0B2C, 0x0B35, 0x0B3F, 0x0B48, 0x0B51, 0x0B5B, 0x0B64, 0x0B6E, 0x0B77, 0x0B80, 0x0B8A, 0x0B93, 0x0B9D, 0x0BA6, 0x0BAF, 0x0BB9, 0x0BC2, 0x0BCB, 0x0BD5, 0x0BDE, 0x0BE7, 0x0BF1, 0x0BFA, 0x0C03, 0x0C0D, 0x0C16, 0x0C1F, 0x0C29, 0x0C32, 0x0C3B, 0x0C45, 0x0C4E, 0x0C57, 0x0C60, 0x0C6A, 0x0C73, 0x0C7C, 0x0C86, 0x0C8F, 0x0C98, 0x0CA1, 0x0CAB, 0x0CB4, 0x0CBD, 0x0CC6, 0x0CCF, 0x0CD9, 0x0CE2, 0x0CEB, 0x0CF4, 0x0CFD, 0x0D07, 0x0D10, 0x0D19, 0x0D22, 0x0D2B, 0x0D34, 0x0D3E, 0x0D47, 0x0D50, 0x0D59, 0x0D62, 0x0D6B, 0x0D74, 0x0D7D, 0x0D87, 0x0D90, 0x0D99, 0x0DA2, 0x0DAB, 0x0DB4, 0x0DBD, 0x0DC6, 0x0DCF, 0x0DD8, 0x0DE1, 0x0DEA, 0x0DF3, 0x0DFC, 0x0E05, 0x0E0F, 0x0E18, 0x0E21, 0x0E2A, 0x0E33, 0x0E3C, 0x0E45, 0x0E4E, 0x0E56, 0x0E5F, 0x0E68, 0x0E71, 0x0E7A, 0x0E83, 0x0E8C, 0x0E95, 0x0E9E, 0x0EA7, 0x0EB0, 0x0EB9, 0x0EC2, 0x0ECB, 0x0ED4, 0x0EDC, 0x0EE5, 0x0EEE, 0x0EF7, 0x0F00, 0x0F09, 0x0F12, 0x0F1B, 0x0F23, 0x0F2C, 0x0F35, 0x0F3E, 0x0F47, 0x0F50, 0x0F58, 0x0F61, 0x0F6A, 0x0F73, 0x0F7C, 0x0F84, 0x0F8D, 0x0F96, 0x0F9F, 0x0FA7, 0x0FB0, 0x0FB9, 0x0FC2, 0x0FCA, 0x0FD3, 0x0FDC, 0x0FE5, 0x0FED, 0x0FF6, 0x0FFF, 0x1007, 0x1010, 0x1019, 0x1021, 0x102A, 0x1033, 0x103B, 0x1044, 0x104D, 0x1055, 0x105E, 0x1067, 0x106F, 0x1078, 0x1080, 0x1089, 0x1092, 0x109A, 0x10A3, 0x10AB, 0x10B4, 0x10BC, 0x10C5, 0x10CE, 0x10D6, 0x10DF, 0x10E7, 0x10F0, 0x10F8, 0x1101, 0x1109, 0x1112, 0x111A, 0x1123, 0x112B, 0x1134, 0x113C, 0x1145, 0x114D, 0x1156, 0x115E, 0x1166, 0x116F, 0x1177, 0x1180, 0x1188, 0x1191, 0x1199, 0x11A1, 0x11AA, 0x11B2, 0x11BB, 0x11C3, 0x11CB, 0x11D4, 0x11DC, 0x11E4, 0x11ED, 0x11F5, 0x11FD, 0x1206, 0x120E, 0x1216, 0x121F, 0x1227, 0x122F, 0x1237, 0x1240, 0x1248, 0x1250, 0x1259, 0x1261, 0x1269, 0x1271, 0x127A, 0x1282, 0x128A, 0x1292, 0x129A, 0x12A3, 0x12AB, 0x12B3, 0x12BB, 0x12C3, 0x12CC, 0x12D4, 0x12DC, 0x12E4, 0x12EC, 0x12F4, 0x12FC, 0x1305, 0x130D, 0x1315, 0x131D, 0x1325, 0x132D, 0x1335, 0x133D, 0x1345, 0x134D, 0x1355, 0x135E, 0x1366, 0x136E, 0x1376, 0x137E, 0x1386, 0x138E, 0x1396, 0x139E, 0x13A6, 0x13AE, 0x13B6, 0x13BE, 0x13C6, 0x13CE, 0x13D6, 0x13DE, 0x13E6, 0x13ED, 0x13F5, 0x13FD, 0x1405, 0x140D, 0x1415, 0x141D, 0x1425, 0x142D, 0x1435, 0x143D, 0x1444, 0x144C, 0x1454, 0x145C, 0x1464, 0x146C, 0x1473, 0x147B, 0x1483, 0x148B, 0x1493, 0x149B, 0x14A2, 0x14AA, 0x14B2, 0x14BA, 0x14C1, 0x14C9, 0x14D1, 0x14D9, 0x14E0, 0x14E8, 0x14F0, 0x14F8, 0x14FF, 0x1507, 0x150F, 0x1516, 0x151E, 0x1526, 0x152D, 0x1535, 0x153D, 0x1544, 0x154C, 0x1554, 0x155B, 0x1563, 0x156B, 0x1572, 0x157A, 0x1581, 0x1589, 0x1591, 0x1598, 0x15A0, 0x15A7, 0x15AF, 0x15B7, 0x15BE, 0x15C6, 0x15CD, 0x15D5, 0x15DC, 0x15E4, 0x15EB, 0x15F3, 0x15FA, 0x1602, 0x1609, 0x1611, 0x1618, 0x1620, 0x1627, 0x162F, 0x1636, 0x163E, 0x1645, 0x164C, 0x1654, 0x165B, 0x1663, 0x166A, 0x1671, 0x1679, 0x1680, 0x1688, 0x168F, 0x1696, 0x169E, 0x16A5, 0x16AC, 0x16B4, 0x16BB, 0x16C2, 0x16CA, 0x16D1, 0x16D8, 0x16E0, 0x16E7, 0x16EE, 0x16F6, 0x16FD, 0x1704, 0x170B, 0x1713, 0x171A, 0x1721, 0x1728, 0x1730, 0x1737, 0x173E, 0x1745, 0x174C, 0x1754, 0x175B, 0x1762, 0x1769, 0x1770, 0x1778, 0x177F, 0x1786, 0x178D, 0x1794, 0x179B, 0x17A2, 0x17AA, 0x17B1, 0x17B8, 0x17BF, 0x17C6, 0x17CD, 0x17D4, 0x17DB, 0x17E2, 0x17E9, 0x17F0, 0x17F7, 0x17FE, 0x1806, 0x180D, 0x1814, 0x181B, 0x1822, 0x1829, 0x1830, 0x1837, 0x183E, 0x1845, 0x184C, 0x1853, 0x185A, 0x1860, 0x1867, 0x186E, 0x1875, 0x187C, 0x1883, 0x188A, 0x1891, 0x1898, 0x189F, 0x18A6, 0x18AD, 0x18B3, 0x18BA, 0x18C1, 0x18C8, 0x18CF, 0x18D6, 0x18DD, 0x18E3, 0x18EA, 0x18F1, 0x18F8, 0x18FF, 0x1906, 0x190C, 0x1913, 0x191A, 0x1921, 0x1928, 0x192E, 0x1935, 0x193C, 0x1943, 0x1949, 0x1950, 0x1957, 0x195D, 0x1964, 0x196B, 0x1972, 0x1978, 0x197F, 0x1986, 0x198C, 0x1993, 0x199A, 0x19A0, 0x19A7, 0x19AE, 0x19B4, 0x19BB, 0x19C2, 0x19C8, 0x19CF, 0x19D5, 0x19DC, 0x19E3, 0x19E9, 0x19F0, 0x19F6, 0x19FD, 0x1A04, 0x1A0A, 0x1A11, 0x1A17, 0x1A1E, 0x1A24, 0x1A2B, 0x1A31, 0x1A38, 0x1A3E, 0x1A45, 0x1A4B, 0x1A52, 0x1A58, 0x1A5F, 0x1A65, 0x1A6C, 0x1A72, 0x1A79, 0x1A7F, 0x1A86, 0x1A8C, 0x1A93, 0x1A99, 0x1A9F, 0x1AA6, 0x1AAC, 0x1AB3, 0x1AB9, 0x1AC0, 0x1AC6, 0x1ACC, 0x1AD3, 0x1AD9, 0x1ADF, 0x1AE6, 0x1AEC, 0x1AF2, 0x1AF9, 0x1AFF, 0x1B05, 0x1B0C, 0x1B12, 0x1B18, 0x1B1F, 0x1B25, 0x1B2B, 0x1B32, 0x1B38, 0x1B3E, 0x1B44, 0x1B4B, 0x1B51, 0x1B57, 0x1B5D, 0x1B64, 0x1B6A, 0x1B70, 0x1B76, 0x1B7D, 0x1B83, 0x1B89, 0x1B8F, 0x1B95, 0x1B9C, 0x1BA2, 0x1BA8, 0x1BAE, 0x1BB4, 0x1BBA, 0x1BC1, 0x1BC7, 0x1BCD, 0x1BD3, 0x1BD9, 0x1BDF, 0x1BE5, 0x1BEB, 0x1BF2, 0x1BF8, 0x1BFE, 0x1C04, 0x1C0A, 0x1C10, 0x1C16, 0x1C1C, 0x1C22, 0x1C28, 0x1C2E, 0x1C34, 0x1C3A, 0x1C40, 0x1C46, 0x1C4C, 0x1C52, 0x1C58, 0x1C5E, 0x1C64, 0x1C6A, 0x1C70, 0x1C76, 0x1C7C, 0x1C82, 0x1C88, 0x1C8E, 0x1C94, 0x1C9A, 0x1CA0, 0x1CA6, 0x1CAC, 0x1CB2, 0x1CB8, 0x1CBE, 0x1CC3, 0x1CC9, 0x1CCF, 0x1CD5, 0x1CDB, 0x1CE1, 0x1CE7, 0x1CED, 0x1CF3, 0x1CF8, 0x1CFE, 0x1D04, 0x1D0A, 0x1D10, 0x1D16, 0x1D1B, 0x1D21, 0x1D27, 0x1D2D, 0x1D33, 0x1D38, 0x1D3E, 0x1D44, 0x1D4A, 0x1D4F, 0x1D55, 0x1D5B, 0x1D61, 0x1D66, 0x1D6C, 0x1D72, 0x1D78, 0x1D7D, 0x1D83, 0x1D89, 0x1D8E, 0x1D94, 0x1D9A, 0x1DA0, 0x1DA5, 0x1DAB, 0x1DB1, 0x1DB6, 0x1DBC, 0x1DC2, 0x1DC7, 0x1DCD, 0x1DD3, 0x1DD8, 0x1DDE, 0x1DE3, 0x1DE9, 0x1DEF, 0x1DF4, 0x1DFA, 0x1DFF, 0x1E05, 0x1E0B, 0x1E10, 0x1E16, 0x1E1B, 0x1E21, 0x1E26, 0x1E2C, 0x1E32, 0x1E37, 0x1E3D, 0x1E42, 0x1E48, 0x1E4D, 0x1E53, 0x1E58, 0x1E5E, 0x1E63, 0x1E69, 0x1E6E, 0x1E74, 0x1E79, 0x1E7F, 0x1E84, 0x1E8A, 0x1E8F, 0x1E94, 0x1E9A, 0x1E9F, 0x1EA5, 0x1EAA, 0x1EB0, 0x1EB5, 0x1EBA, 0x1EC0, 0x1EC5, 0x1ECB, 0x1ED0, 0x1ED5, 0x1EDB, 0x1EE0, 0x1EE6, 0x1EEB, 0x1EF0, 0x1EF6, 0x1EFB, 0x1F00, 0x1F06, 0x1F0B, 0x1F10, 0x1F16, 0x1F1B, 0x1F20, 0x1F26, 0x1F2B, 0x1F30, 0x1F36, 0x1F3B, 0x1F40, 0x1F45, 0x1F4B, 0x1F50, 0x1F55, 0x1F5A, 0x1F60, 0x1F65, 0x1F6A, 0x1F6F, 0x1F75, 0x1F7A, 0x1F7F, 0x1F84, 0x1F8A, 0x1F8F, 0x1F94, 0x1F99, 0x1F9E, 0x1FA4, 0x1FA9, 0x1FAE, 0x1FB3, 0x1FB8, 0x1FBD, 0x1FC3, 0x1FC8, 0x1FCD, 0x1FD2, 0x1FD7, 0x1FDC, 0x1FE1, 0x1FE6, 0x1FEC, 0x1FF1, 0x1FF6, 0x1FFB, 0x2000
