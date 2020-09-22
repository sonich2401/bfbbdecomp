.include "macros.inc"

.section .rodata   # 0x802542E0 - 0x80254308

.global lbl_802542E0
lbl_802542E0:
	.incbin "baserom.dol", 0x2512C0, 0xC
.global lbl_802542EC
lbl_802542EC:
	.incbin "baserom.dol", 0x2512CC, 0xC
.global lbl_802542F8
lbl_802542F8:
	.incbin "baserom.dol", 0x2512D8, 0x10

.section .text  # 0x8004E2F0 - 0x8004E510

.global func_8004E2F0
func_8004E2F0:
/* 8004E2F0 0004B0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004E2F4 0004B0F4  7C 08 02 A6 */	mflr r0
/* 8004E2F8 0004B0F8  C0 C4 00 00 */	lfs f6, 0(r4)
/* 8004E2FC 0004B0FC  C0 A4 00 04 */	lfs f5, 4(r4)
/* 8004E300 0004B100  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004E304 0004B104  EC 66 01 B2 */	fmuls f3, f6, f6
/* 8004E308 0004B108  EC 25 01 72 */	fmuls f1, f5, f5
/* 8004E30C 0004B10C  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8004E310 0004B110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004E314 0004B114  7C 9F 23 78 */	mr r31, r4
/* 8004E318 0004B118  EC 87 01 F2 */	fmuls f4, f7, f7
/* 8004E31C 0004B11C  93 C1 00 08 */	stw r30, 8(r1)
/* 8004E320 0004B120  EC 23 08 2A */	fadds f1, f3, f1
/* 8004E324 0004B124  7C 7E 1B 78 */	mr r30, r3
/* 8004E328 0004B128  C0 02 87 D8 */	lfs f0, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E32C 0004B12C  C0 42 87 DC */	lfs f2, lbl_803CD15C-_SDA2_BASE_(r2)
/* 8004E330 0004B130  EC 24 08 2A */	fadds f1, f4, f1
/* 8004E334 0004B134  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E338 0004B138  FC 00 02 10 */	fabs f0, f0
/* 8004E33C 0004B13C  FC 00 00 18 */	frsp f0, f0
/* 8004E340 0004B140  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8004E344 0004B144  4C 40 13 82 */	cror 2, 0, 2
/* 8004E348 0004B148  40 82 00 18 */	bne lbl_8004E360
/* 8004E34C 0004B14C  D0 DE 00 00 */	stfs f6, 0(r30)
/* 8004E350 0004B150  D0 BE 00 04 */	stfs f5, 4(r30)
/* 8004E354 0004B154  D0 FE 00 08 */	stfs f7, 8(r30)
/* 8004E358 0004B158  C0 22 87 D8 */	lfs f1, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E35C 0004B15C  48 00 00 68 */	b lbl_8004E3C4
lbl_8004E360:
/* 8004E360 0004B160  FC 00 0A 10 */	fabs f0, f1
/* 8004E364 0004B164  FC 00 00 18 */	frsp f0, f0
/* 8004E368 0004B168  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8004E36C 0004B16C  4C 40 13 82 */	cror 2, 0, 2
/* 8004E370 0004B170  40 82 00 24 */	bne lbl_8004E394
/* 8004E374 0004B174  C0 02 87 E0 */	lfs f0, lbl_803CD160-_SDA2_BASE_(r2)
/* 8004E378 0004B178  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8004E37C 0004B17C  C0 02 87 D8 */	lfs f0, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E380 0004B180  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8004E384 0004B184  C0 02 87 E0 */	lfs f0, lbl_803CD160-_SDA2_BASE_(r2)
/* 8004E388 0004B188  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8004E38C 0004B18C  C0 22 87 E0 */	lfs f1, lbl_803CD160-_SDA2_BASE_(r2)
/* 8004E390 0004B190  48 00 00 34 */	b lbl_8004E3C4
lbl_8004E394:
/* 8004E394 0004B194  4B FB C4 69 */	bl func_8000A7FC
/* 8004E398 0004B198  C0 82 87 D8 */	lfs f4, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E39C 0004B19C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8004E3A0 0004B1A0  EC 84 08 24 */	fdivs f4, f4, f1
/* 8004E3A4 0004B1A4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8004E3A8 0004B1A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8004E3AC 0004B1AC  EC 63 01 32 */	fmuls f3, f3, f4
/* 8004E3B0 0004B1B0  EC 42 01 32 */	fmuls f2, f2, f4
/* 8004E3B4 0004B1B4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8004E3B8 0004B1B8  D0 7E 00 00 */	stfs f3, 0(r30)
/* 8004E3BC 0004B1BC  D0 5E 00 04 */	stfs f2, 4(r30)
/* 8004E3C0 0004B1C0  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8004E3C4:
/* 8004E3C4 0004B1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004E3C8 0004B1C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004E3CC 0004B1CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004E3D0 0004B1D0  7C 08 03 A6 */	mtlr r0
/* 8004E3D4 0004B1D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004E3D8 0004B1D8  4E 80 00 20 */	blr 

.global func_8004E3DC
func_8004E3DC:
/* 8004E3DC 0004B1DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004E3E0 0004B1E0  7C 08 02 A6 */	mflr r0
/* 8004E3E4 0004B1E4  C0 C4 00 00 */	lfs f6, 0(r4)
/* 8004E3E8 0004B1E8  C0 A4 00 04 */	lfs f5, 4(r4)
/* 8004E3EC 0004B1EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004E3F0 0004B1F0  EC 66 01 B2 */	fmuls f3, f6, f6
/* 8004E3F4 0004B1F4  EC 25 01 72 */	fmuls f1, f5, f5
/* 8004E3F8 0004B1F8  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8004E3FC 0004B1FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004E400 0004B200  7C 9F 23 78 */	mr r31, r4
/* 8004E404 0004B204  EC 87 01 F2 */	fmuls f4, f7, f7
/* 8004E408 0004B208  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004E40C 0004B20C  EC 23 08 2A */	fadds f1, f3, f1
/* 8004E410 0004B210  7C 7E 1B 78 */	mr r30, r3
/* 8004E414 0004B214  C0 02 87 D8 */	lfs f0, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E418 0004B218  C0 42 87 DC */	lfs f2, lbl_803CD15C-_SDA2_BASE_(r2)
/* 8004E41C 0004B21C  EC 24 08 2A */	fadds f1, f4, f1
/* 8004E420 0004B220  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E424 0004B224  FC 00 02 10 */	fabs f0, f0
/* 8004E428 0004B228  FC 00 00 18 */	frsp f0, f0
/* 8004E42C 0004B22C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8004E430 0004B230  4C 40 13 82 */	cror 2, 0, 2
/* 8004E434 0004B234  40 82 00 1C */	bne lbl_8004E450
/* 8004E438 0004B238  D0 DE 00 00 */	stfs f6, 0(r30)
/* 8004E43C 0004B23C  D0 BE 00 04 */	stfs f5, 4(r30)
/* 8004E440 0004B240  D0 FE 00 08 */	stfs f7, 8(r30)
/* 8004E444 0004B244  C0 02 87 D8 */	lfs f0, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E448 0004B248  D0 01 00 08 */	stfs f0, 8(r1)
/* 8004E44C 0004B24C  48 00 00 74 */	b lbl_8004E4C0
lbl_8004E450:
/* 8004E450 0004B250  FC 00 0A 10 */	fabs f0, f1
/* 8004E454 0004B254  FC 00 00 18 */	frsp f0, f0
/* 8004E458 0004B258  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8004E45C 0004B25C  4C 40 13 82 */	cror 2, 0, 2
/* 8004E460 0004B260  40 82 00 28 */	bne lbl_8004E488
/* 8004E464 0004B264  C0 02 87 E0 */	lfs f0, lbl_803CD160-_SDA2_BASE_(r2)
/* 8004E468 0004B268  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8004E46C 0004B26C  C0 02 87 D8 */	lfs f0, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E470 0004B270  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8004E474 0004B274  C0 02 87 E0 */	lfs f0, lbl_803CD160-_SDA2_BASE_(r2)
/* 8004E478 0004B278  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8004E47C 0004B27C  C0 02 87 E0 */	lfs f0, lbl_803CD160-_SDA2_BASE_(r2)
/* 8004E480 0004B280  D0 01 00 08 */	stfs f0, 8(r1)
/* 8004E484 0004B284  48 00 00 3C */	b lbl_8004E4C0
lbl_8004E488:
/* 8004E488 0004B288  38 61 00 08 */	addi r3, r1, 8
/* 8004E48C 0004B28C  4B FC 46 CD */	bl func_80012B58
/* 8004E490 0004B290  C0 22 87 D8 */	lfs f1, lbl_803CD158-_SDA2_BASE_(r2)
/* 8004E494 0004B294  C0 01 00 08 */	lfs f0, 8(r1)
/* 8004E498 0004B298  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8004E49C 0004B29C  EC 61 00 24 */	fdivs f3, f1, f0
/* 8004E4A0 0004B2A0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8004E4A4 0004B2A4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8004E4A8 0004B2A8  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8004E4AC 0004B2AC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8004E4B0 0004B2B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8004E4B4 0004B2B4  D0 5E 00 00 */	stfs f2, 0(r30)
/* 8004E4B8 0004B2B8  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8004E4BC 0004B2BC  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8004E4C0:
/* 8004E4C0 0004B2C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004E4C4 0004B2C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004E4C8 0004B2C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8004E4CC 0004B2CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004E4D0 0004B2D0  7C 08 03 A6 */	mtlr r0
/* 8004E4D4 0004B2D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8004E4D8 0004B2D8  4E 80 00 20 */	blr 

.global func_8004E4DC
func_8004E4DC:
/* 8004E4DC 0004B2DC  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 8004E4E0 0004B2E0  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 8004E4E4 0004B2E4  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 8004E4E8 0004B2E8  F0 23 80 08 */	psq_st f1, 8(r3), 1, qr0
/* 8004E4EC 0004B2EC  4E 80 00 20 */	blr 

.global func_8004E4F0
func_8004E4F0:
/* 8004E4F0 0004B2F0  E0 43 00 04 */	psq_l f2, 4(r3), 0, qr0
/* 8004E4F4 0004B2F4  E0 64 00 04 */	psq_l f3, 4(r4), 0, qr0
/* 8004E4F8 0004B2F8  10 42 00 F2 */	ps_mul f2, f2, f3
/* 8004E4FC 0004B2FC  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 8004E500 0004B300  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 8004E504 0004B304  10 65 11 3A */	ps_madd f3, f5, f4, f2
/* 8004E508 0004B308  10 23 10 94 */	ps_sum0 f1, f3, f2, f2
/* 8004E50C 0004B30C  4E 80 00 20 */	blr 
