#include "global.h"
#include "main.h"
#include "gx.h"

extern u32 gUnk02106814;

extern s32 gUnk021D33F8;
extern s32 gUnk021D33F4;
extern u32 gUnk021D33F0;
extern u32 gUnk021D33EC;
extern s32 gUnk021D33E8;
extern u32 gUnk021D33E4;
extern s32 gUnk021D33E0;


static inline void *_GX_OBJ_PTR(){
    return (void *)0x6400000;
}
static inline void *_GXS_OBJ_PTR(){
    return (void *)0x6600000;
}

void GX_LoadBGPltt(void *src, u32 offset, u32 size){
    _GX_Load_16(gUnk02106814, src, (void *)(0x5000000 + offset), size);
}

void GXS_LoadBGPltt(void *src, u32 offset, u32 size){
    _GX_Load_16(gUnk02106814, src, (void *)(0x5000400 + offset), size);
}

void GX_LoadOBJPltt(void *src, u32 offset, u32 size){
    _GX_Load_16(gUnk02106814, src, (void *)(0x5000200 + offset), size);
}

void GXS_LoadOBJPltt(void *src, u32 offset, u32 size){
    _GX_Load_16(gUnk02106814, src, (void *)(0x5000600 + offset), size);
}

void GX_LoadOAM(void *src, u32 offset, u32 size){
    _GX_Load_32(gUnk02106814, src, (void *)(0x7000000 + offset), size);
}

void GXS_LoadOAM(void *src, u32 offset, u32 size){
    _GX_Load_32(gUnk02106814, src, (void *)(0x7000400 + offset), size);
}

void GX_LoadOBJ(void *src, u32 offset, u32 size){
    u32 base = (u32)_GX_OBJ_PTR();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadOBJ(void *src, u32 offset, u32 size){
    u32 base = (u32)_GXS_OBJ_PTR();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG0Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG0ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG0Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG0ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG1Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG1ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG1Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG1ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG2Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG2ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG2Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG2ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG3Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG3ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG3Scr(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG3ScrPtr();
    _GX_Load_16(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG0Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG0CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG0Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG0CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG1Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG1CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG1Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG1CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG2Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG2CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG2Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG2CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_LoadBG3Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2_GetBG3CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GXS_LoadBG3Char(void *src, u32 offset, u32 size){
    u32 base = (u32)G2S_GetBG3CharPtr();
    _GX_Load_32(gUnk02106814, src, (void *)(base + offset), size);
}

void GX_BeginLoadBGExtPltt(){
    gUnk021D33F4 = GX_ResetBankForBGExtPltt();
    switch (gUnk021D33F4)
    {
    case 0: //needed to match
        break;
    case 0x10:
        gUnk021D33F0 = 0x06880000;
        gUnk021D33EC = 0x0;
        break;
    case 0x40:
        gUnk021D33F0 = 0x06894000;
        gUnk021D33EC = 0x4000;
        break;
    case 0x20:
    case 0x60:
        gUnk021D33F0 = 0x06890000;
        gUnk021D33EC = 0x0;
        break;
    }
}

void GX_LoadBGExtPltt(void *src, u32 offset, u32 size){
    _GX_Load_32_Async(gUnk02106814, src, (void *)(gUnk021D33F0 + offset - gUnk021D33EC), size, NULL, NULL);
}

void GX_EndLoadBGExtPltt(){
    if (gUnk02106814 != -1)
        MI_WaitDma(gUnk02106814);
    GX_SetBankForBGExtPltt(gUnk021D33F4);
    gUnk021D33F4 = 0x0;
    gUnk021D33F0 = 0x0;
    gUnk021D33EC = 0x0;
}

void GX_BeginLoadOBJExtPltt(){
    gUnk021D33E8 = GX_ResetBankForOBJExtPltt();
    switch (gUnk021D33E8)
    {
    case 0: //needed to match
        break;
    case 0x40:
        gUnk021D33E4 = 0x06894000;
        break;
    case 0x20:
        gUnk021D33E4 = 0x06890000;
        break;
    }
}

void GX_LoadOBJExtPltt(void *src, u32 offset, u32 size){
    _GX_Load_32_Async(gUnk02106814, src, (void *)(gUnk021D33E4 + offset), size, NULL, NULL);
}

void GX_EndLoadOBJExtPltt(){
    if (gUnk02106814 != -1)
        MI_WaitDma(gUnk02106814);
    GX_SetBankForOBJExtPltt(gUnk021D33E8);
    gUnk021D33E8 = 0x0;
    gUnk021D33E4 = 0x0;
}

void GXS_BeginLoadBGExtPltt(){
    gUnk021D33E0 = FUN_020C6034();
}

void GXS_LoadBGExtPltt(void *src, u32 offset, u32 size){
    _GX_Load_32_Async(gUnk02106814, src, (void *)(0x06898000 + offset), size, NULL, NULL);
}

void GXS_EndLoadBGExtPltt(){
    if (gUnk02106814 != -1)
        MI_WaitDma(gUnk02106814);
    GX_SetBankForSubBGExtPltt(gUnk021D33E0);
    gUnk021D33E0 = 0x0;
}

void GXS_BeginLoadOBJExtPltt(){
    gUnk021D33F8 = GX_ResetBankForSubOBJ();
}

void GXS_LoadOBJExtPltt(void *src, u32 offset, u32 size){
    _GX_Load_32_Async(gUnk02106814, src, (void *)(0x068A0000 + offset), size, NULL, NULL);
}

void GXS_EndLoadOBJExtPltt(){
    if (gUnk02106814 != -1)
        MI_WaitDma(gUnk02106814);
    GX_SetBankForSubOBJExtPltt(gUnk021D33F8);
    gUnk021D33F8 = 0x0;
}
