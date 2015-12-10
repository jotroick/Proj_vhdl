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

#include "ieee/std_logic_unsigned/std_logic_unsigned.h"
#include "ieee/std_logic_arith/std_logic_arith.h"
#include "ieee/std_logic_1164/std_logic_1164.h"
#include "semaforo.h"
static const char la0[] = {2, 2, 3};
static const char la1[] = {2, 3, 2};
static const char la2[] = {3, 2, 2};
static const char la3[] = {3, 3, 2};
static const char la4[] = {2, 3, 3};


static const int la5[] = {23, 56, 57, 58, 61, 62, 63, 65, 66, 67, 69, 70, 71, 74, 75, 76, 79, 80, 81, 84, 86, 87, 88, 92};

static const HSim::LineNumberTable fileLineTable[] = {{"C:/Users/Josafat/Desktop/Semaforo/semaforo_vhdl.vhd", la5}, {0, 0}};



static const char *entFileName = "C:/Users/Josafat/Desktop/Semaforo/semaforo_vhdl.vhd";

static const char *filename = "C:/Users/Josafat/Desktop/Semaforo/semaforo_vhdl.vhd";

class Work_luz_semaforo_P139: public HSim__s7 {
public:
  Work_luz_semaforo*Arch;
    HSim__s2 *driver_SA_0_;
    HSim__s2 *driver_SA_1_;
    HSim__s2 *driver_SE_2_;
   HSimWaitInfo WP[1];
    HSim__s4 PV[1];
  char t0;
  Work_luz_semaforo_P139(const char* nm, Work_luz_semaforo* arch);
    virtual void reset();
    virtual void execute();
};


#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif
HSim__s6* createWork_luz_semaforo(const char *name)
{
    return new Work_luz_semaforo(name);
}

    Work_luz_semaforo::Work_luz_semaforo(const char *name)
    :HSim__s6(false, name, "luz", "semaforo", fileLineTable, HSim::VhdlDesignEntity, 43)

{
;
}

void Work_luz_semaforo::constructPorts()
{
  SE[0].initialize("clk", &IeeeStd_logic_1164->Std_logic, this, HSim::PortSigIn);
;
SE[0].setDefaultValue((char *)0);
;
SE[1].initialize("carro", &IeeeStd_logic_1164->Std_logic, this, HSim::PortSigIn);
;
SE[1].setDefaultValue((char *)0);
;
SE[2].initialize("estsig", &IeeeStd_logic_1164->Std_logic_vector, MKConstr(2, 0, HSim::DOWNTO), this, HSim::PortSigOut, (const char*)0);
;
SE[2].setDefaultValue((char *)0);
    setInterfaceConstructed();
}

void Work_luz_semaforo::constructObject()
{
  new(&Colores) HSimEnumType("colores","","crojo crojoamarillo camarillo1 cverde camarillo2");
;
SA[0].initialize("color", &Colores, this, HSim::DeclaredSig, HSimSA::charToMem(1));
;
;
SA[1].initialize("salida", &IeeeStd_logic_1164->Std_logic_vector, MKConstr(2, 0, HSim::DOWNTO), this, HSim::DeclaredSig, (const char*)0);
;
SA[1].setDefaultValue((char *)0);
;
new(&Cw) HSim__s4("verde", &IeeeStd_logic_1164->Std_logic_vector, MKConstr(0, 2, HSim::TO), la0);
;;
new(&CD) HSim__s4("amarillo1", &IeeeStd_logic_1164->Std_logic_vector, MKConstr(0, 2, HSim::TO), la1);
;;
new(&CK) HSim__s4("rojo", &IeeeStd_logic_1164->Std_logic_vector, MKConstr(0, 2, HSim::TO), la2);
;;
new(&CS) HSim__s4("rojoamarillo", &IeeeStd_logic_1164->Std_logic_vector, MKConstr(0, 2, HSim::TO), la3);
;;
new(&CZ) HSim__s4("amarillo2", &IeeeStd_logic_1164->Std_logic_vector, MKConstr(0, 2, HSim::TO), la4);
;;
}


void Work_luz_semaforo::reset()
{
}


Work_luz_semaforo::~Work_luz_semaforo()
{
}

void Work_luz_semaforo::architectureInstantiate(HSimConfigDecl* cfg)
{
}

void Work_luz_semaforo::vhdlArchImplement()
{
    constructObject();
    globalDesign->addProcess(new Work_luz_semaforo_P139(":52",this));
}

Work_luz_semaforo_P139::Work_luz_semaforo_P139(const char* aName, Work_luz_semaforo *arch)
  : HSim__s7(filename,aName,arch)
  , Arch(arch)
, t0(0) 
{
  new(&PV[0]) HSim__s4("cuenta", &HSimStandardPkg::Integer, HSimSA::intToMem(0));
;

// #line 52 "C:/Users/Josafat/Desktop/Semaforo/semaforo_vhdl.vhd"
  Arch->SE[0].registerAttrib(HSim::EVENT); 
    WP[0].initialize(this);
    Arch->SE[0].__f4(&WP[0]);
    Arch->SE[1].__f4(&WP[0]);
driver_SA_0_ = new HSim__s2(this, &Arch->SA[0]);
driver_SA_1_ = new HSim__s2(this, &Arch->SA[1]);
driver_SE_2_ = new HSim__s2(this, &Arch->SE[2]);
driver_SA_0_->__f5();
driver_SA_1_->__f5();
driver_SE_2_->__f5();

  addVariable(&PV[0]);
}


void Work_luz_semaforo_P139::reset()
{
}


void Work_luz_semaforo_P139::execute()
{
s0:;
    (*globalKernel->onLine)(56,filename);
if (((*(int *)PV[0].Value) < 30)) {
    (*globalKernel->onLine)(57,filename);
if (((*(Arch->SE[0].Value)) == 3)) {
    t0 = Arch->SE[0].__f2();

 } else {
t0= 0;}
if (t0) {
    (*globalKernel->onLine)(58,filename);
switch ((*(Arch->SA[0].Value))) {
case 0: 
        (*globalKernel->onLine)(61,filename);
    *(char *)(driver_SA_0_->NewTrans->Value)=1;
driver_SA_0_->__f25(); 

    (*globalKernel->onLine)(62,filename);
    HSIMMEMCPY(driver_SA_1_->NewTrans->Value, Arch->CS.Value, 3);
driver_SA_1_->__f25(); 

    (*globalKernel->onLine)(63,filename);
(*(int *)PV[0].Value) = (((*(int *)PV[0].Value)+(1)));
    break;
case 1: 
        (*globalKernel->onLine)(65,filename);
    *(char *)(driver_SA_0_->NewTrans->Value)=2;
driver_SA_0_->__f25(); 

    (*globalKernel->onLine)(66,filename);
    HSIMMEMCPY(driver_SA_1_->NewTrans->Value, Arch->CD.Value, 3);
driver_SA_1_->__f25(); 

    (*globalKernel->onLine)(67,filename);
(*(int *)PV[0].Value) = (((*(int *)PV[0].Value)+(1)));
    break;
case 2: 
        (*globalKernel->onLine)(69,filename);
    *(char *)(driver_SA_0_->NewTrans->Value)=3;
driver_SA_0_->__f25(); 

    (*globalKernel->onLine)(70,filename);
    HSIMMEMCPY(driver_SA_1_->NewTrans->Value, Arch->Cw.Value, 3);
driver_SA_1_->__f25(); 

    (*globalKernel->onLine)(71,filename);
(*(int *)PV[0].Value) = (((*(int *)PV[0].Value)+(1)));
    break;
case 3: 
        (*globalKernel->onLine)(74,filename);
    *(char *)(driver_SA_0_->NewTrans->Value)=4;
driver_SA_0_->__f25(); 

    (*globalKernel->onLine)(75,filename);
    HSIMMEMCPY(driver_SA_1_->NewTrans->Value, Arch->CZ.Value, 3);
driver_SA_1_->__f25(); 

    (*globalKernel->onLine)(76,filename);
(*(int *)PV[0].Value) = (((*(int *)PV[0].Value)+(1)));
    break;
case 4: 
        (*globalKernel->onLine)(79,filename);
    *(char *)(driver_SA_0_->NewTrans->Value)=0;
driver_SA_0_->__f25(); 

    (*globalKernel->onLine)(80,filename);
    HSIMMEMCPY(driver_SA_1_->NewTrans->Value, Arch->CK.Value, 3);
driver_SA_1_->__f25(); 

    (*globalKernel->onLine)(81,filename);
(*(int *)PV[0].Value) = (((*(int *)PV[0].Value)+(1)));
    break;
    }
}
    (*globalKernel->onLine)(84,filename);
if (((*(Arch->SE[1].Value)) == 2)) {
    t0 = ((*(Arch->SA[0].Value)) == 3);

 } else {
t0= 0;}
if (t0) {
    (*globalKernel->onLine)(86,filename);
    *(char *)(driver_SA_0_->NewTrans->Value)=4;
driver_SA_0_->__f25(); 

    (*globalKernel->onLine)(87,filename);
    HSIMMEMCPY(driver_SA_1_->NewTrans->Value, Arch->CZ.Value, 3);
driver_SA_1_->__f25(); 

    (*globalKernel->onLine)(88,filename);
(*(int *)PV[0].Value) = (((*(int *)PV[0].Value)+(1)));
}
}
    (*globalKernel->onLine)(92,filename);
    HSIMMEMCPY(driver_SE_2_->NewTrans->Value, Arch->SA[1].Value, 3);
driver_SE_2_->__f26(); 

    WP[0].setStatus(true);
}


