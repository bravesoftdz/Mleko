//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("frxBDE5.res");
USEPACKAGE("vcl50.bpi");
USEUNIT("..\frxSDACReg.pas");
USERES("..\frxSDACReg.dcr");
USEPACKAGE("vcldb50.bpi");
USEPACKAGE("sdac50.bpi");
USEPACKAGE("frx5.bpi");
USEPACKAGE("frxDB5.bpi");
USEPACKAGE("fs5.bpi");
USEPACKAGE("fqb50.bpi");
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
