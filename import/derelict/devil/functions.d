/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.devil.functions;

private
{
    import derelict.devil.types;
}

extern(System)
{
    alias ILboolean function (ILuint) da_ilActiveImage;
    alias ILboolean function(ILuint) da_ilActiveLayer;
    alias ILboolean function(ILuint) da_ilActiveMipmap;
    alias ILboolean function(ILconst_string) da_ilApplyPal;
    alias ILboolean function(ILstring, ILstring) da_ilApplyProfile;
    alias ILvoid function(ILuint) da_ilBindImage;
    alias ILboolean function(ILuint, ILint, ILint, ILint, ILuint, ILuint, ILuint, ILuint, ILuint, ILuint) da_ilBlit;
    alias ILvoid function(ILclampf, ILclampf, ILclampf, ILclampf) da_ilClearColour;
    alias ILboolean function() da_ilClearImage;
    alias ILuint function() da_ilCloneCurImage;
    alias ILboolean function(ILenum) da_ilCompressFunc;
    alias ILboolean function(ILenum, ILenum) da_ilConvertImage;
    alias ILboolean function(ILenum) da_ilConvertPal;
    alias ILboolean function(ILuint) da_ilCopyImage;
    alias ILuint function(ILuint, ILuint, ILuint, ILuint, ILuint, ILuint, ILenum, ILenum, ILvoid*) da_ilCopyPixels;
    alias ILuint function(ILenum, ILuint) da_ilCreateSubImage;
    alias ILboolean function() da_ilDefaultImage;
    alias ILvoid function(ILuint) da_ilDeleteImage;
    alias ILvoid function(ILsizei, in ILuint*) da_ilDeleteImages;
    alias ILboolean function(ILenum) da_ilDisable;
    alias ILboolean function(ILenum) da_ilEnable;
    alias ILboolean function(ILenum) da_ilFormatFunc;
    alias ILvoid function(ILsizei, ILuint*) da_ilGenImages;
    alias ILuint function() da_ilGenImage;
    alias ILubyte* function(ILenum) da_ilGetAlpha;
    alias ILboolean function(ILenum) da_ilGetBoolean;
    alias ILvoid function(ILenum, ILboolean*) da_ilGetBooleanv;
    alias ILubyte* function() da_ilGetData;
    alias ILuint function(ILvoid*, ILuint, ILenum) da_ilGetDXTCData;
    alias ILenum function() da_ilGetError;
    alias ILint function(ILenum) da_ilGetInteger;
    alias ILvoid function(ILenum, ILint*) da_ilGetIntegerv;
    alias ILuint function() da_ilGetLumpPos;
    alias ILubyte* function() da_ilGetPalette;
    alias ILstring function(ILenum) da_ilGetString;
    alias ILvoid function(ILenum, ILenum) da_ilHint;
    alias ILvoid function() da_ilInit;
    alias ILboolean function(ILenum) da_ilIsDisabled;
    alias ILboolean function(ILenum) da_ilIsEnabled;
    alias ILenum function(ILHANDLE) da_ilDetermineTypeF;
    alias ILboolean function(ILuint) da_ilIsImage;
    alias ILboolean function(ILenum, ILstring) da_ilIsValid;
    alias ILboolean function(ILenum, ILHANDLE) da_ilIsValidF;
    alias ILboolean function(ILenum, ILvoid*, ILuint) da_ilIsValidL;
    alias ILvoid function(ILclampf, ILclampf, ILclampf, ILclampf) da_ilKeyColour;
    alias ILboolean function(ILenum, ILconst_string) da_ilLoad;
    alias ILboolean function(ILenum, ILHANDLE) da_ilLoadF;
    alias ILboolean function(ILconst_string) da_ilLoadImage;
    alias ILboolean function(ILenum, in ILvoid*, ILuint) da_ilLoadL;
    alias ILboolean function(ILconst_string) da_ilLoadPal;
    alias ILvoid function(ILdouble) da_ilModAlpha;
    alias ILboolean function(ILenum) da_ilOriginFunc;
    alias ILboolean function(ILuint, ILint, ILint, ILint) da_ilOverlayImage;
    alias ILvoid function() da_ilPopAttrib;
    alias ILvoid function(ILuint) da_ilPushAttrib;
    alias ILvoid function(ILenum) da_ilRegisterFormat;
    alias ILboolean function(ILconst_string, IL_LOADPROC) da_ilRegisterLoad;
    alias ILboolean function(ILuint) da_ilRegisterMipNum;
    alias ILboolean function(ILuint) da_ilRegisterNumImages;
    alias ILvoid function(ILenum) da_ilRegisterOrigin;
    alias ILvoid function(ILvoid*, ILuint, ILenum) da_ilRegisterPal;
    alias ILboolean function(ILconst_string, IL_SAVEPROC) da_ilRegisterSave;
    alias ILvoid function(ILenum) da_ilRegisterType;
    alias ILboolean function(ILconst_string) da_ilRemoveLoad;
    alias ILboolean function(ILconst_string) da_ilRemoveSave;
    alias ILvoid function() da_ilResetRead;
    alias ILvoid function() da_ilResetWrite;
    alias ILboolean function(ILenum, ILconst_string) da_ilSave;
    alias ILuint function(ILenum, ILHANDLE) da_ilSaveF;
    alias ILboolean function(ILconst_string) da_ilSaveImage;
    alias ILuint function(ILenum, ILvoid*, ILuint) da_ilSaveL;
    alias ILboolean function(ILconst_string) da_ilSavePal;
    alias ILboolean function(ILdouble) da_ilSetAlpha;
    alias ILboolean function(ILvoid*) da_ilSetData;
    alias ILboolean function(ILuint) da_ilSetDuration;
    alias ILvoid function(ILenum, ILint) da_ilSetInteger;
    alias ILvoid function(mAlloc, mFree) da_ilSetMemory;
    alias ILvoid function(ILint, ILint, ILint, ILuint, ILuint, ILuint, ILenum, ILenum, ILvoid*) da_ilSetPixels;
    alias ILvoid function(fOpenRProc, fCloseRProc, fEofProc, fGetcProc, fReadProc, fSeekRProc, fTellRProc) da_ilSetRead;
    alias ILvoid function(ILenum, in char*) da_ilSetString;
    alias ILvoid function(fOpenWProc, fCloseWProc, fPutcProc, fSeekWProc, fTellWProc, fWriteProc) da_ilSetWrite;
    alias ILvoid function() da_ilShutDown;
    alias ILboolean function(ILuint, ILuint, ILuint, ILubyte, ILenum, ILenum, ILvoid*) da_ilTexImage;
    alias ILenum function(ILconst_string) da_ilTypeFromExt;
    alias ILboolean function(ILenum) da_ilTypeFunc;
    alias ILboolean function(ILconst_string, ILuint, ILuint, ILuint, ILubyte) da_ilLoadData;
    alias ILboolean function(ILHANDLE, ILuint, ILuint, ILuint, ILubyte) da_ilLoadDataF;
    alias ILboolean function(ILvoid*, ILuint, ILuint, ILuint, ILuint, ILubyte) da_ilLoadDataL;
    alias ILboolean function(ILconst_string) da_ilSaveData;
}

__gshared
{
    da_ilActiveImage ilActiveImage;
    da_ilActiveLayer ilActiveLayer;
    da_ilActiveMipmap ilActiveMipmap;
    da_ilApplyPal ilApplyPal;
    da_ilApplyProfile ilApplyProfile;
    da_ilBindImage ilBindImage;
    da_ilBlit ilBlit;
    da_ilClearColour ilClearColour;
    da_ilClearImage ilClearImage;
    da_ilCloneCurImage ilCloneCurImage;
    da_ilCompressFunc ilCompressFunc;
    da_ilConvertImage ilConvertImage;
    da_ilConvertPal ilConvertPal;
    da_ilCopyImage ilCopyImage;
    da_ilCopyPixels ilCopyPixels;
    da_ilCreateSubImage ilCreateSubImage;
    da_ilDefaultImage ilDefaultImage;
    da_ilDeleteImage ilDeleteImage;
    da_ilDeleteImages ilDeleteImages;
    da_ilDisable ilDisable;
    da_ilEnable ilEnable;
    da_ilFormatFunc ilFormatFunc;
    da_ilGenImages ilGenImages;
    da_ilGenImage ilGenImage;
    da_ilGetAlpha ilGetAlpha;
    da_ilGetBoolean ilGetBoolean;
    da_ilGetBooleanv ilGetBooleanv;
    da_ilGetData ilGetData;
    da_ilGetDXTCData ilGetDXTCData;
    da_ilGetError ilGetError;
    da_ilGetInteger ilGetInteger;
    da_ilGetIntegerv ilGetIntegerv;
    da_ilGetLumpPos ilGetLumpPos;
    da_ilGetPalette ilGetPalette;
    da_ilGetString ilGetString;
    da_ilHint ilHint;
    da_ilInit ilInit;
    da_ilIsDisabled ilIsDisabled;
    da_ilIsEnabled ilIsEnabled;
    da_ilDetermineTypeF ilDetermineTypeF;
    da_ilIsImage ilIsImage;
    da_ilIsValid ilIsValid;
    da_ilIsValidF ilIsValidF;
    da_ilIsValidL ilIsValidL;
    da_ilKeyColour ilKeyColour;
    da_ilLoad ilLoad;
    da_ilLoadF ilLoadF;
    da_ilLoadImage ilLoadImage;
    da_ilLoadL ilLoadL;
    da_ilLoadPal ilLoadPal;
    da_ilModAlpha ilModAlpha;
    da_ilOriginFunc ilOriginFunc;
    da_ilOverlayImage ilOverlayImage;
    da_ilPopAttrib ilPopAttrib;
    da_ilPushAttrib ilPushAttrib;
    da_ilRegisterFormat ilRegisterFormat;
    da_ilRegisterLoad ilRegisterLoad;
    da_ilRegisterMipNum ilRegisterMipNum;
    da_ilRegisterNumImages ilRegisterNumImages;
    da_ilRegisterOrigin ilRegisterOrigin;
    da_ilRegisterPal ilRegisterPal;
    da_ilRegisterSave ilRegisterSave;
    da_ilRegisterType ilRegisterType;
    da_ilRemoveLoad ilRemoveLoad;
    da_ilRemoveSave ilRemoveSave;
    da_ilResetRead ilResetRead;
    da_ilResetWrite ilResetWrite;
    da_ilSave ilSave;
    da_ilSaveF ilSaveF;
    da_ilSaveImage ilSaveImage;
    da_ilSaveL ilSaveL;
    da_ilSavePal ilSavePal;
    da_ilSetAlpha ilSetAlpha;
    da_ilSetData ilSetData;
    da_ilSetDuration ilSetDuration;
    da_ilSetInteger ilSetInteger;
    da_ilSetMemory ilSetMemory;
    da_ilSetPixels ilSetPixels;
    da_ilSetRead ilSetRead;
    da_ilSetString ilSetString;
    da_ilSetWrite ilSetWrite;
    da_ilShutDown ilShutDown;
    da_ilTexImage ilTexImage;
    da_ilTypeFromExt ilTypeFromExt;
    da_ilTypeFunc ilTypeFunc;
    da_ilLoadData ilLoadData;
    da_ilLoadDataF ilLoadDataF;
    da_ilLoadDataL ilLoadDataL;
    da_ilSaveData ilSaveData;

    alias ilClearColour     ilClearColor;
    alias ilKeyColour       ilKeyColor;
}