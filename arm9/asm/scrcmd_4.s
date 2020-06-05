    .include "asm/macros.inc"
    .include "global.inc"

	.extern gGameLanguage

	.text

	thumb_func_start ScrCmd_PlayerName
ScrCmd_PlayerName: ; 0x020406CC
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r6, [r0, #0x0]
	mov r1, #0xf
	add r0, r6, #0x0
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r4, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	ldrb r5, [r1, #0x0]
	add r0, r6, #0x0
	bl FUN_020377AC
	bl FUN_020238F4
	add r2, r0, #0x0
	ldr r0, [r4, #0x0]
	add r1, r5, #0x0
	bl FUN_0200ABC0
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_RivalName
ScrCmd_RivalName: ; 0x02040700
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r4, [r0, #0x0]
	mov r1, #0xf
	add r0, r4, #0x0
	bl FUN_02039438
	ldr r2, [r5, #0x8]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	ldr r2, [r4, #0xc]
	bl FUN_0200ABE4
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_SupportName
ScrCmd_SupportName: ; 0x02040724
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r4, [r0, #0x0]
	mov r1, #0xf
	add r0, r4, #0x0
	bl FUN_02039438
	ldr r2, [r5, #0x8]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	ldr r2, [r4, #0xc]
	bl FUN_0200AC0C
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_PokemonName
ScrCmd_PokemonName: ; 0x02040748
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r6, [r0, #0x0]
	mov r1, #0xf
	add r0, r6, #0x0
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r5, r0, #0x0
	ldr r0, [r6, #0xc]
	bl FUN_0206BB1C
	add r1, r5, #0x0
	bl FUN_0206B9B0
	add r2, r0, #0x0
	ldr r0, [r7, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AC60
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_ItemName
ScrCmd_ItemName: ; 0x02040790
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AE38
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_PocketName
ScrCmd_PocketName: ; 0x020407C8
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AEE0
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_ItemWazaName
ScrCmd_ItemWazaName: ; 0x02040800
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	bl FUN_0206EA30
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AD5C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_WazaName
ScrCmd_WazaName: ; 0x0204083C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AD5C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_NumberName
ScrCmd_NumberName: ; 0x02040874
	push {r4-r6, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r5, r0, #0x0
	bl FUN_02054C14
	add r3, r0, #0x0
	mov r0, #0x1
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	add r2, r5, #0x0
	bl FUN_0200AD38
	mov r0, #0x0
	add sp, #0x8
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_NumberNameEx
ScrCmd_NumberNameEx: ; 0x020408BC
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r6, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020394F0
	str r0, [sp, #0x8]
	ldr r1, [r5, #0x8]
	add r2, r1, #0x1
	str r2, [r5, #0x8]
	ldrb r4, [r1, #0x0]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r3, [r2, #0x0]
	cmp r4, #0x0
	bne _02040904
	bl FUN_02054C14
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_02040904:
	str r4, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, [r7, #0x0]
	ldr r2, [sp, #0x8]
	add r1, r6, #0x0
	bl FUN_0200AD38
	mov r0, #0x0
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_NickName
ScrCmd_NickName: ; 0x0204091C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r6, [r0, #0x0]
	mov r1, #0xf
	add r0, r6, #0x0
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r5, r0, #0x0
	ldr r0, [r6, #0xc]
	bl FUN_0206BB1C
	add r1, r5, #0x0
	bl FUN_0206B9B0
	add r2, r0, #0x0
	ldr r0, [r7, #0x0]
	add r1, r4, #0x0
	bl FUN_0200ACF8
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_NickNamePC
ScrCmd_NickNamePC: ; 0x02040964
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r4, [r0, #0x0]
	ldr r0, [r4, #0xc]
	bl FUN_02022510
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r5, r0, #0x0
	mov r1, #0x1e
	bl _s32_div_f
	add r7, r0, #0x0
	add r0, r5, #0x0
	mov r1, #0x1e
	bl _s32_div_f
	add r2, r1, #0x0
	ldr r0, [sp, #0x0]
	add r1, r7, #0x0
	bl FUN_0206B5E4
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200ACF8
	mov r0, #0x0
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_PoketchName
ScrCmd_PoketchName: ; 0x020409C0
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B02C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_TrTypeName
ScrCmd_TrTypeName: ; 0x020409F8
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B064
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_MyTrTypeName
ScrCmd_MyTrTypeName: ; 0x02040A30
	push {r3-r7, lr}
	add r7, r0, #0x0
	add r0, #0x80
	ldr r5, [r0, #0x0]
	add r0, r5, #0x0
	bl FUN_020377AC
	bl FUN_020238F4
	add r4, r0, #0x0
	add r0, r5, #0x0
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r7, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r7, #0x8]
	add r0, r4, #0x0
	ldrb r5, [r1, #0x0]
	bl FUN_020239CC
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02023A28
	add r1, r0, #0x0
	add r0, r7, #0x0
	mov r2, #0x2
	bl FUN_020536D0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r5, #0x0
	bl FUN_0200B09C
	mov r0, #0x0
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_PokemonNameExtra
ScrCmd_PokemonNameExtra: ; 0x02040A7C
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020394F0
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	ldr r1, [r5, #0x8]
	str r0, [sp, #0x8]
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	ldrb r5, [r1, #0x0]
	add r0, r6, #0x0
	mov r1, #0x4
	bl FUN_02040AE4
	add r6, r0, #0x0
	str r5, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, [r7, #0x0]
	ldr r3, [sp, #0x8]
	add r1, r4, #0x0
	add r2, r6, #0x0
	bl FUN_0200ABB4
	add r0, r6, #0x0
	bl FUN_02021A20
	mov r0, #0x0
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_02040AE4
FUN_02040AE4: ; 0x02040AE4
	push {r3-r5, lr}
	ldr r2, _02040B08 ; =0x0000016A
	add r4, r0, #0x0
	add r3, r1, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r5, r0, #0x0
	add r1, r4, #0x0
	bl FUN_0200A914
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0200A8B8
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4
_02040B08: .word 0x0000016A

	thumb_func_start ScrCmd_FirstPokemonName
ScrCmd_FirstPokemonName: ; 0x02040B0C
	push {r4-r6, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r4, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r4, #0x8]
	add r4, #0x80
	ldr r0, [r4, #0x0]
	ldrb r5, [r1, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	bl FUN_0205F388
	mov r1, #0x4
	bl FUN_02040AE4
	add r4, r0, #0x0
	mov r0, #0x1
	str r0, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, [r6, #0x0]
	add r1, r5, #0x0
	add r2, r4, #0x0
	mov r3, #0x0
	bl FUN_0200ABB4
	add r0, r4, #0x0
	bl FUN_02021A20
	mov r0, #0x0
	add sp, #0x8
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_RivalPokemonName
ScrCmd_RivalPokemonName: ; 0x02040B5C
	push {r4-r6, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r4, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r4, #0x8]
	add r4, #0x80
	ldr r0, [r4, #0x0]
	ldrb r5, [r1, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	bl FUN_0205F398
	mov r1, #0x4
	bl FUN_02040AE4
	add r4, r0, #0x0
	mov r0, #0x1
	str r0, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, [r6, #0x0]
	add r1, r5, #0x0
	add r2, r4, #0x0
	mov r3, #0x0
	bl FUN_0200ABB4
	add r0, r4, #0x0
	bl FUN_02021A20
	mov r0, #0x0
	add sp, #0x8
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_SupportPokemonName
ScrCmd_SupportPokemonName: ; 0x02040BAC
	push {r4-r6, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r4, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r4, #0x8]
	add r4, #0x80
	ldr r0, [r4, #0x0]
	ldrb r5, [r1, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	bl FUN_0205F3C0
	mov r1, #0x4
	bl FUN_02040AE4
	add r4, r0, #0x0
	mov r0, #0x1
	str r0, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, [r6, #0x0]
	add r1, r5, #0x0
	add r2, r4, #0x0
	mov r3, #0x0
	bl FUN_0200ABB4
	add r0, r4, #0x0
	bl FUN_02021A20
	mov r0, #0x0
	add sp, #0x8
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_GoodsName
ScrCmd_GoodsName: ; 0x02040BFC
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B350
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_TrapName
ScrCmd_TrapName: ; 0x02040C34
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B1D4
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_TamaName
ScrCmd_TamaName: ; 0x02040C6C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B164
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_ZoneName
ScrCmd_ZoneName: ; 0x02040CA4
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	mov r0, #0x16
	mov r1, #0x4
	bl FUN_020219F4
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r6, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	mov r1, #0x4
	add r2, r4, #0x0
	bl FUN_02064E60
	mov r0, #0x1
	str r0, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, [r7, #0x0]
	add r1, r6, #0x0
	add r2, r4, #0x0
	mov r3, #0x0
	bl FUN_0200ABB4
	add r0, r4, #0x0
	bl FUN_02021A20
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_NutsName
ScrCmd_NutsName: ; 0x02040D04
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r4, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r4, #0x8]
	add r0, r4, #0x0
	ldrb r6, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020394F0
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_020394F0
	sub r5, #0x95
	add r4, r0, #0x0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x20
	bl FUN_020852E8
	add r5, r0, #0x0
	cmp r4, #0x2
	bhs _02040D5A
	mov r0, #0x1
	b _02040D5C
_02040D5A:
	mov r0, #0x0
_02040D5C:
	str r0, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, [r7, #0x0]
	add r1, r6, #0x0
	add r2, r5, #0x0
	mov r3, #0x0
	bl FUN_0200ABB4
	add r0, r5, #0x0
	bl FUN_02021A20
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_SeikakuName
ScrCmd_SeikakuName: ; 0x02040D7C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AE04
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_AcceName
ScrCmd_AcceName: ; 0x02040DB4
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B660
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_MonumantName
ScrCmd_MonumantName: ; 0x02040DEC
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	mov r0, #0xb
	ldrb r6, [r1, #0x0]
	add r1, r0, #0x0
	bl FUN_020219F4
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02024EB4
	bl FUN_02024F0C
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02021E28
	ldr r0, _02040E48 ; =gGameLanguage
	mov r3, #0x0
	ldrb r0, [r0, #0x0]
	str r3, [sp, #0x0]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r7, #0x0]
	add r2, r4, #0x0
	bl FUN_0200ABB4
	add r0, r4, #0x0
	bl FUN_02021A20
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_02040E48: .word gGameLanguage

	thumb_func_start ScrCmd_TemotiWazaName
ScrCmd_TemotiWazaName: ; 0x02040E4C
	push {r3-r7, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r6, [r0, #0x0]
	mov r1, #0xf
	add r0, r6, #0x0
	bl FUN_02039438
	ldr r1, [r4, #0x8]
	add r7, r0, #0x0
	add r0, r1, #0x1
	str r0, [r4, #0x8]
	add r0, r4, #0x0
	ldrb r5, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020394F0
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_020394F0
	add r4, r0, #0x0
	ldr r0, [r6, #0xc]
	bl FUN_0206BB1C
	ldr r1, [sp, #0x0]
	bl FUN_0206B9B0
	add r4, #0x36
	add r1, r4, #0x0
	mov r2, #0x0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r7, #0x0]
	add r1, r5, #0x0
	bl FUN_0200AD5C
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_RibbonName
ScrCmd_RibbonName: ; 0x02040EB4
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x3
	bl FUN_0207FC5C
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AD94
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_SealName
ScrCmd_SealName: ; 0x02040EF8
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	sub r2, r2, #0x1
	lsl r2, r2, #0x10
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	bl FUN_0200B534
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_02040F34
FUN_02040F34: ; 0x02040F34
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AE70
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02040F6C
FUN_02040F6C: ; 0x02040F6C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200AEA8
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02040FA4
FUN_02040FA4: ; 0x02040FA4
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B388
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02040FDC
FUN_02040FDC: ; 0x02040FDC
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B20C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02041014
FUN_02041014: ; 0x02041014
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B19C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0204104C
FUN_0204104C: ; 0x0204104C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020394F0
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	ldr r0, [r5, #0x8]
	add r1, r4, #0x0
	add r0, r0, #0x1
	str r0, [r5, #0x8]
	ldr r0, [r6, #0x0]
	add r2, r7, #0x0
	bl FUN_0200ACC0
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02041094
FUN_02041094: ; 0x02041094
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldrb r4, [r1, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	bl FUN_0205F3C0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200ACC0
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_020410C8
FUN_020410C8: ; 0x020410C8
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B698
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02041100
FUN_02041100: ; 0x02041100
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl FUN_0200B09C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02041138
FUN_02041138: ; 0x02041138
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r2, r0, #0x0
	sub r2, r2, #0x1
	lsl r2, r2, #0x10
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	bl FUN_0200B568
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_02041174
FUN_02041174: ; 0x02041174
	push {r4, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FUN_02039438
	ldr r2, [r4, #0x8]
	add r1, r2, #0x1
	str r1, [r4, #0x8]
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	bl FUN_0200B7A8
	mov r0, #0x0
	pop {r4, pc}
