//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("cxPageControlC5.res");
USEPACKAGE("vcl50.bpi");
USEPACKAGE("cxLibraryVCLC5.bpi");
USEPACKAGE("dxThemeC5.bpi");
USEUNIT("cxPC.pas");
USEUNIT("cxPCConsts.pas");
USEUNIT("cxPCGoDialog.pas");
USEUNIT("cxPCPainters.pas");
USEUNIT("cxPCPaintersFactory.pas");

//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Package source.
//---------------------------------------------------------------------------

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
        return 1;
}
//---------------------------------------------------------------------------
