.include "macros.inc"

.section .text  # 0x80135EA0 - 0x8013612C

.global func_80135EA0
func_80135EA0:
/* 80135EA0 00132CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80135EA4 00132CA4  7C 08 02 A6 */	mflr r0
/* 80135EA8 00132CA8  3C 80 80 2A */	lis r4, lbl_8029913C@ha
/* 80135EAC 00132CAC  3C 60 80 2A */	lis r3, lbl_802990E0@ha
/* 80135EB0 00132CB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80135EB4 00132CB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80135EB8 00132CB8  3B E4 91 3C */	addi r31, r4, lbl_8029913C@l
/* 80135EBC 00132CBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80135EC0 00132CC0  3B C3 90 E0 */	addi r30, r3, lbl_802990E0@l
/* 80135EC4 00132CC4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80135EC8 00132CC8  3B A0 00 00 */	li r29, 0
lbl_80135ECC:
/* 80135ECC 00132CCC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80135ED0 00132CD0  4B F1 63 45 */	bl func_8004C214
/* 80135ED4 00132CD4  3B BD 00 01 */	addi r29, r29, 1
/* 80135ED8 00132CD8  90 7E 00 00 */	stw r3, 0(r30)
/* 80135EDC 00132CDC  2C 1D 00 17 */	cmpwi r29, 0x17
/* 80135EE0 00132CE0  3B FF 00 04 */	addi r31, r31, 4
/* 80135EE4 00132CE4  3B DE 00 04 */	addi r30, r30, 4
/* 80135EE8 00132CE8  41 80 FF E4 */	blt lbl_80135ECC
/* 80135EEC 00132CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80135EF0 00132CF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80135EF4 00132CF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80135EF8 00132CF8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80135EFC 00132CFC  7C 08 03 A6 */	mtlr r0
/* 80135F00 00132D00  38 21 00 20 */	addi r1, r1, 0x20
/* 80135F04 00132D04  4E 80 00 20 */	blr 

.global func_80135F08
func_80135F08:
/* 80135F08 00132D08  4E 80 00 20 */	blr 

.global func_80135F0C
func_80135F0C:
/* 80135F0C 00132D0C  38 00 00 01 */	li r0, 1
/* 80135F10 00132D10  90 0D 96 38 */	stw r0, lbl_803CBF38-_SDA_BASE_(r13)
/* 80135F14 00132D14  4E 80 00 20 */	blr 

.global func_80135F18
func_80135F18:
/* 80135F18 00132D18  38 00 00 00 */	li r0, 0
/* 80135F1C 00132D1C  90 0D 96 38 */	stw r0, lbl_803CBF38-_SDA_BASE_(r13)
/* 80135F20 00132D20  4E 80 00 20 */	blr 
/* 80135F24 00132D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135F28 00132D28  7C 08 02 A6 */	mflr r0
/* 80135F2C 00132D2C  3C C0 4E 54 */	lis r6, 0x4E544831@ha
/* 80135F30 00132D30  7C 85 23 78 */	mr r5, r4
/* 80135F34 00132D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135F38 00132D38  38 06 48 31 */	addi r0, r6, 0x4E544831@l
/* 80135F3C 00132D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80135F40 00132D40  7C 7F 1B 78 */	mr r31, r3
/* 80135F44 00132D44  7C 1F 00 00 */	cmpw r31, r0
/* 80135F48 00132D48  41 82 00 50 */	beq lbl_80135F98
/* 80135F4C 00132D4C  40 80 00 14 */	bge lbl_80135F60
/* 80135F50 00132D50  38 06 48 30 */	addi r0, r6, 0x4830
/* 80135F54 00132D54  7C 1F 00 00 */	cmpw r31, r0
/* 80135F58 00132D58  40 80 00 18 */	bge lbl_80135F70
/* 80135F5C 00132D5C  48 00 00 8C */	b lbl_80135FE8
lbl_80135F60:
/* 80135F60 00132D60  38 06 48 33 */	addi r0, r6, 0x4833
/* 80135F64 00132D64  7C 1F 00 00 */	cmpw r31, r0
/* 80135F68 00132D68  40 80 00 80 */	bge lbl_80135FE8
/* 80135F6C 00132D6C  48 00 00 54 */	b lbl_80135FC0
lbl_80135F70:
/* 80135F70 00132D70  7F E4 FB 78 */	mr r4, r31
/* 80135F74 00132D74  38 60 10 B8 */	li r3, 0x10b8
/* 80135F78 00132D78  4B FD 91 D9 */	bl func_8010F150
/* 80135F7C 00132D7C  7C 60 1B 79 */	or. r0, r3, r3
/* 80135F80 00132D80  41 82 00 10 */	beq lbl_80135F90
/* 80135F84 00132D84  7F E4 FB 78 */	mr r4, r31
/* 80135F88 00132D88  48 01 1A 65 */	bl func_801479EC
/* 80135F8C 00132D8C  7C 60 1B 78 */	mr r0, r3
lbl_80135F90:
/* 80135F90 00132D90  7C 03 03 78 */	mr r3, r0
/* 80135F94 00132D94  48 00 00 78 */	b lbl_8013600C
lbl_80135F98:
/* 80135F98 00132D98  7F E4 FB 78 */	mr r4, r31
/* 80135F9C 00132D9C  38 60 06 4C */	li r3, 0x64c
/* 80135FA0 00132DA0  4B FD 91 B1 */	bl func_8010F150
/* 80135FA4 00132DA4  7C 60 1B 79 */	or. r0, r3, r3
/* 80135FA8 00132DA8  41 82 00 10 */	beq lbl_80135FB8
/* 80135FAC 00132DAC  7F E4 FB 78 */	mr r4, r31
/* 80135FB0 00132DB0  48 03 D0 69 */	bl func_80173018
/* 80135FB4 00132DB4  7C 60 1B 78 */	mr r0, r3
lbl_80135FB8:
/* 80135FB8 00132DB8  7C 03 03 78 */	mr r3, r0
/* 80135FBC 00132DBC  48 00 00 50 */	b lbl_8013600C
lbl_80135FC0:
/* 80135FC0 00132DC0  7F E4 FB 78 */	mr r4, r31
/* 80135FC4 00132DC4  38 60 14 24 */	li r3, 0x1424
/* 80135FC8 00132DC8  4B FD 91 89 */	bl func_8010F150
/* 80135FCC 00132DCC  7C 60 1B 79 */	or. r0, r3, r3
/* 80135FD0 00132DD0  41 82 00 10 */	beq lbl_80135FE0
/* 80135FD4 00132DD4  7F E4 FB 78 */	mr r4, r31
/* 80135FD8 00132DD8  48 01 A6 E1 */	bl func_801506B8
/* 80135FDC 00132DDC  7C 60 1B 78 */	mr r0, r3
lbl_80135FE0:
/* 80135FE0 00132DE0  7C 03 03 78 */	mr r3, r0
/* 80135FE4 00132DE4  48 00 00 28 */	b lbl_8013600C
lbl_80135FE8:
/* 80135FE8 00132DE8  7F E4 FB 78 */	mr r4, r31
/* 80135FEC 00132DEC  38 60 02 B4 */	li r3, 0x2b4
/* 80135FF0 00132DF0  4B FD 91 61 */	bl func_8010F150
/* 80135FF4 00132DF4  7C 60 1B 79 */	or. r0, r3, r3
/* 80135FF8 00132DF8  41 82 00 10 */	beq lbl_80136008
/* 80135FFC 00132DFC  7F E4 FB 78 */	mr r4, r31
/* 80136000 00132E00  48 00 00 C9 */	bl func_801360C8
/* 80136004 00132E04  7C 60 1B 78 */	mr r0, r3
lbl_80136008:
/* 80136008 00132E08  7C 03 03 78 */	mr r3, r0
lbl_8013600C:
/* 8013600C 00132E0C  28 03 00 00 */	cmplwi r3, 0
/* 80136010 00132E10  41 82 00 08 */	beq lbl_80136018
/* 80136014 00132E14  38 63 00 D0 */	addi r3, r3, 0xd0
lbl_80136018:
/* 80136018 00132E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013601C 00132E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136020 00132E20  7C 08 03 A6 */	mtlr r0
/* 80136024 00132E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80136028 00132E28  4E 80 00 20 */	blr 
/* 8013602C 00132E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136030 00132E30  7C 08 02 A6 */	mflr r0
/* 80136034 00132E34  38 80 00 01 */	li r4, 1
/* 80136038 00132E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013603C 00132E3C  4B FA 2F 69 */	bl func_800D8FA4
/* 80136040 00132E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136044 00132E44  7C 08 03 A6 */	mtlr r0
/* 80136048 00132E48  38 21 00 10 */	addi r1, r1, 0x10
/* 8013604C 00132E4C  4E 80 00 20 */	blr 

.global func_80136050
func_80136050:
/* 80136050 00132E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136054 00132E54  7C 08 02 A6 */	mflr r0
/* 80136058 00132E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013605C 00132E5C  4B FB 94 05 */	bl func_800EF460
/* 80136060 00132E60  80 0D 96 38 */	lwz r0, lbl_803CBF38-_SDA_BASE_(r13)
/* 80136064 00132E64  2C 00 00 00 */	cmpwi r0, 0
/* 80136068 00132E68  41 82 00 10 */	beq lbl_80136078
/* 8013606C 00132E6C  38 00 00 00 */	li r0, 0
/* 80136070 00132E70  90 0D 96 38 */	stw r0, lbl_803CBF38-_SDA_BASE_(r13)
/* 80136074 00132E74  48 00 00 15 */	bl func_80136088
lbl_80136078:
/* 80136078 00132E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013607C 00132E7C  7C 08 03 A6 */	mtlr r0
/* 80136080 00132E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80136084 00132E84  4E 80 00 20 */	blr 

.global func_80136088
func_80136088:
/* 80136088 00132E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013608C 00132E8C  7C 08 02 A6 */	mflr r0
/* 80136090 00132E90  3C 60 80 27 */	lis r3, lbl_8026CAA8@ha
/* 80136094 00132E94  38 63 CA A8 */	addi r3, r3, lbl_8026CAA8@l
/* 80136098 00132E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013609C 00132E9C  38 63 00 FE */	addi r3, r3, 0xfe
/* 801360A0 00132EA0  4B F7 27 A5 */	bl func_800A8844
/* 801360A4 00132EA4  3C 80 80 32 */	lis r4, lbl_803242F8@ha
/* 801360A8 00132EA8  90 6D 96 3C */	stw r3, lbl_803CBF3C-_SDA_BASE_(r13)
/* 801360AC 00132EAC  38 64 42 F8 */	addi r3, r4, lbl_803242F8@l
/* 801360B0 00132EB0  38 00 01 00 */	li r0, 0x100
/* 801360B4 00132EB4  90 03 01 38 */	stw r0, 0x138(r3)
/* 801360B8 00132EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801360BC 00132EBC  7C 08 03 A6 */	mtlr r0
/* 801360C0 00132EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 801360C4 00132EC4  4E 80 00 20 */	blr 

.global func_801360C8
func_801360C8:
/* 801360C8 00132EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801360CC 00132ECC  7C 08 02 A6 */	mflr r0
/* 801360D0 00132ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801360D4 00132ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801360D8 00132ED8  7C 7F 1B 78 */	mr r31, r3
/* 801360DC 00132EDC  4B FB E5 19 */	bl func_800F45F4
/* 801360E0 00132EE0  3C 80 80 2A */	lis r4, lbl_80299198@ha
/* 801360E4 00132EE4  7F E3 FB 78 */	mr r3, r31
/* 801360E8 00132EE8  38 04 91 98 */	addi r0, r4, lbl_80299198@l
/* 801360EC 00132EEC  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 801360F0 00132EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801360F4 00132EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801360F8 00132EF8  7C 08 03 A6 */	mtlr r0
/* 801360FC 00132EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80136100 00132F00  4E 80 00 20 */	blr 
/* 80136104 00132F04  38 60 00 00 */	li r3, 0
/* 80136108 00132F08  4E 80 00 20 */	blr 
/* 8013610C 00132F0C  38 60 00 00 */	li r3, 0
/* 80136110 00132F10  4E 80 00 20 */	blr 
/* 80136114 00132F14  38 60 00 10 */	li r3, 0x10
/* 80136118 00132F18  4E 80 00 20 */	blr 
/* 8013611C 00132F1C  38 60 00 10 */	li r3, 0x10
/* 80136120 00132F20  4E 80 00 20 */	blr 
/* 80136124 00132F24  38 60 00 03 */	li r3, 3
/* 80136128 00132F28  4E 80 00 20 */	blr 