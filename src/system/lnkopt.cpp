#include "system/lnkopt.h"

#define LNK_RamSize 2
#define LNK_StackSize 3000
#define LNK_OrgAddress 0x80010000
#define LNK_FileSys FS_CD
#define LNK_DevKit DK_SONY_PCI

LNK_OPTS OPT_LinkerOpts = {
    LNK_RamSize*1024*1024,
    LNK_StackSize,
    (void*)LNK_OrgAddress,
    (void*)0, // bad idea?
    ((LNK_OrgAddress+(LNK_RamSize*1024*1024)-(64*1024)))-LNK_StackSize,
    LNK_FileSys,
    LNK_DevKit,
    0, 0
};
