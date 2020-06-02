#include "script.h"

THUMB_FUNC void InitScriptContext(struct ScriptContext *ctx, void *cmdTable, void *cmdTableEnd)
{
    u32 i;

    ctx->mode = 0;
    ctx->scriptPtr = 0;
    ctx->stackDepth = 0;
    ctx->nativePtr = 0;
    ctx->cmdTable = cmdTable;
    ctx->cmdTableEnd = cmdTableEnd;

    for (i = 0; i < 4; i++)
        ctx->data[i] = 0;

    for (i = 0; i < 20; i++)
        ctx->stack[i] = 0;

    ctx->unk74 = 0;
}

THUMB_FUNC u8 SetupBytecodeScript(struct ScriptContext *ctx, const u8 *ptr)
{
    ctx->scriptPtr = ptr;
    ctx->mode = 1;
    return 1;
}

THUMB_FUNC void SetupNativeScript(struct ScriptContext *ctx, BOOL (*ptr)(struct ScriptContext *))
{
    ctx->mode = 2;
    ctx->nativePtr = ptr;
}

THUMB_FUNC void StopScript(struct ScriptContext *ctx)
{
    ctx->mode = 0;
    ctx->scriptPtr = 0;
}

THUMB_FUNC void FUN_02038B6C(struct ScriptContext *ctx, s32 r1)
{
    ctx->unk74 = (u32)r1;
}

THUMB_FUNC u8 RunScriptCommand(struct ScriptContext *ctx)
{
    if (ctx->mode == 0)
        return FALSE;

    switch (ctx->mode)
    {
    case 0:
        return FALSE;
    case 2:
        if (ctx->nativePtr)
        {
            if (ctx->nativePtr(ctx) == TRUE)
                ctx->mode = 1;
            return TRUE;
        }
        ctx->mode = 1;
    case 1:
        while (1)
        {
            u16 cmdCode;
            ScrCmdFunc *func;

            if (!ctx->scriptPtr)
            {
                ctx->mode = 0;
                return FALSE;
            }

            cmdCode = ScriptReadHalfword(ctx);
            u32 cmdTableEnd = (u32)ctx->cmdTableEnd;
            if (cmdCode >= cmdTableEnd)
            {
                ErrorHandling();
                ctx->mode = 0;
                return FALSE;
            }

            func = &ctx->cmdTable[cmdCode];

            if ((*func)(ctx) == 1)
                break;
        }
    }

    return TRUE;
}

THUMB_FUNC u8 ScriptPush(struct ScriptContext *ctx, const u8 *ptr)
{
    if (ctx->stackDepth + 1 >= 20)
    {
        return 1;
    }
    else
    {
        ctx->stack[ctx->stackDepth] = ptr;
        ctx->stackDepth++;
        return 0;
    }
}

THUMB_FUNC const u8 *ScriptPop(struct ScriptContext *ctx)
{
    if (ctx->stackDepth == 0)
        return NULL;

    ctx->stackDepth--;
    return ctx->stack[ctx->stackDepth];
}

THUMB_FUNC void ScriptJump(struct ScriptContext *ctx, const u8 *ptr)
{
    ctx->scriptPtr = ptr;
}

THUMB_FUNC u8 ScriptCall(struct ScriptContext *ctx, const u8 *ptr)
{
    u8 ret = ScriptPush(ctx, ctx->scriptPtr);
    ctx->scriptPtr = ptr;
    return ret;
}

THUMB_FUNC void ScriptReturn(struct ScriptContext *ctx)
{
    ctx->scriptPtr = ScriptPop(ctx);
}

THUMB_FUNC u16 ScriptReadHalfword(struct ScriptContext *ctx)
{
    u16 value = *(ctx->scriptPtr++);
    value += *(ctx->scriptPtr++) << 8;
    return value;
}

THUMB_FUNC u32 ScriptReadWord(struct ScriptContext *ctx)
{
    u32 value0 = *(ctx->scriptPtr++);
    u32 value1 = *(ctx->scriptPtr++);
    u32 value2 = *(ctx->scriptPtr++);
    u32 value3 = *(ctx->scriptPtr++);
    u32 retVal = 0;

    retVal += value3;
    retVal <<= 8;
    retVal += value2;
    retVal <<= 8;
    retVal += value1;
    retVal <<= 8;
    retVal += value0;
    return retVal;
}
