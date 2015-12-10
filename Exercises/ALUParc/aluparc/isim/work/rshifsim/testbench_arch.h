////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_rshifsim_testbench_arch_H
#define H_Work_rshifsim_testbench_arch_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_rshifsim_testbench_arch: public HSim__s6 {
public:


HSimFileVar Results;
HSim__s4 V10;
HSimAccessVar V13;
HSim__s4 C17;
HSim__s4 C1b;
HSim__s4 C1e;
    HSim__s1 SA[4];
    Work_rshifsim_testbench_arch(const char * name);
    ~Work_rshifsim_testbench_arch();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_rshifsim_testbench_arch(const char *name);

#endif
