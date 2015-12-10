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

#ifndef H_Work_luz_semaforo_H
#define H_Work_luz_semaforo_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_luz_semaforo: public HSim__s6 {
public:

    HSim__s1 SE[3];

  HSimEnumType Colores;
HSim__s4 Cw;
HSim__s4 CD;
HSim__s4 CK;
HSim__s4 CS;
HSim__s4 CZ;
    HSim__s1 SA[2];
    Work_luz_semaforo(const char * name);
    ~Work_luz_semaforo();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_luz_semaforo(const char *name);

#endif
