////////////////////////////////////////////////////////////////////////////////
//   ____  ____  
//  /   /\/   /  
// /___/  \  /   
// \   \   \/    
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /___/   /\   
// \   \  /  \  
//  \___\/\___\ 
////////////////////////////////////////////////////////////////////////////////

#ifndef H_simprim_ver_auxlibMlatchsre_H
#define H_simprim_ver_auxlibMlatchsre_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class simprim_ver_auxlibMlatchsre: public HSimVlogUdpBase {

public:
    simprim_ver_auxlibMlatchsre(const char *instname);
    ~simprim_ver_auxlibMlatchsre();
    virtual void archImplement();
    HSim__s1 q;
    HSim__s1 clk;
    HSim__s1 d;
    HSim__s1 set;
    HSim__s1 rst;
    HSim__s1 ge;
    HSim__s1 notifier;
    HSim__s2 * driver_q;
    static const char s_LvlTableOutputs[];
    static const char s_EdgTableOutputs_notifier[];
    static const unsigned int s_MultArray[];
};

#endif
