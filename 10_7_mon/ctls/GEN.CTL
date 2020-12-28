;***************************************************************************
;GEN  --  Master MONGEN dialog control file
;
;Unless otherwise stated, all monitors include the following, excepting of
;course any hardware limitations due to processor type:
;		All disk drivers
;		All printer drivers
;		All magtape drivers
;		ANF-10
;		DECnet-10
;		DECtape service
;		Ethernet
;		IBM commumications
;		KA10 floating point simulation
;		LAT service
;***************************************************************************
.DECLARE@BUILDS.DCL

;Standard KL "Features" MONGEN dialog
MKL::
.PA =KL:
.RUN DSK:MONGEN
*N	;Write no MONGEN.MIC
*SHORT	;Type of help desired
*F	;Feature test dialog
*F	;File name
*KL10	;Option
*YES	;Standard switch settings
=^Z

;Standard/FTMP=0 KL "Features" MONGEN dialog
MKLF::
.PA =KLF:
.RUN DSK:MONGEN
*N	;Write no MONGEN.MIC
*SHORT	;Type of help desired
*F	;Feature test dialog
*F	;File name
*KL10	;Option
*NO	;Standard switch settings
*MP,OFF	;No multiprocessor support
*
=^Z

;Standard KS "Features" MONGEN dialog
MKS::
.PA =KS:
.RUN DSK:MONGEN
*N	;Write no MONGEN.MIC
*SHORT	;Type of help desired
*F	;Feature test dialog
*F	;File name
*KS10	;Option
*Y	;Standard switch settings
=^Z
;KL1322 "RA" MONGEN dialog
;
;	Standard KL single-processor
;		No networks
M1322A::
.PA =A:
.RUN DSK:MONGEN
*N	;Write no MONGEN.MIC
*SHORT	;Type of help desired
*SYS	;Hardware dialog
*	;File name
*KL	;Processor type
*1	;# of CPUs
*RA###  DEC10 Development
*1322	;CPU0 serial number
*Y	;Exclude monitor overhead ?
*Y	;EBOX/MBOX runtime accounting ?
*Y	;Exclude PI time ?
*N	;Account verification ?
*Y	;MOS memory?
*YES	;SCA support?
*NO	;Ethernet support
*YES	;SA10s
*NO	;RP01
*NO	;DRUMS
*NO	;RS04
*NO	;RPXKON (prompt)
*NO	;RNXKON
*YES	;RAXKON
*YES	;DSXKON
*YES	;TM2KON
*YES	;TX1KON
*YES	;TD2KON
*YES	;T78KON
*NO	;TM10B
*NO	;TC10C
*YES	;TS1KON
*YES	;LPTSER
*NO	;DLPSER
*NO	;PLTSER
*NO	;CDRSER
*NO	;DCRSER
*YES	;CDPSER
*YES	;PTPSER
*YES	;PTRSER
*N	;D8SINT
*N	;D6SINT
*N	;MCB
*NO	;DC10
*16	;M0TTDN
*CTY	;OPR
*5-23	;Data set lines on CPU0
*	;End of data set lines
*40	;Jobs
*	;Pages core/user
*2048	;Total core
*4	;Real time devices
*10	;Core for non-locking jobs
*50	;Pages of EVM
*15	;# HPQs
*NO	;METER
*Y	;KASER ?
*Y	;MPXSER ?
*Y	;PSISER ?
*Y	;IPCSER ?
*Y	;ENQ/DEQ ?
*10	;Disk set
*NO	;Device loop
*20	;# PTYs
*N	;Network support
*TTDMOS,96	;Make -20F strings longer
*MSGMAX,596	;Large network message size to accomodate DECnetwork
*FLCDEF,0	;Default filler class 
*TTYWID,80	;default tty width
*TTCHKS,8	;Larger tty chunk size
*TTYLCT,0	;TTY LC
*	;End decimal value definitions
*CHGPPP,<20040,,0> ;Poke or Admin privs to do CHGPPN
*PRVPRV,<^-40,,0> ;No admin privs for automatic jobs
*PRVFIL,055
*ATODMP,0	;Do not dump if uptime .LT. 5 minutes
*RTCH1,1	;Reserve PI channel 1 for real time
*MTDLTP,0	;Standard magtape labels are bypass
*M.EDIT,1	;Enable TTY EDITOR
*DSDRIC,0	;Disable INITIA on dataset lines
*	;End octal value definitions
*	;End SIXBIT value definitions
*	;DEV,PI
*	;DEV,PI,#
*	;DEV,PI,AC
*MDC,5,100,SYS	;Local ersatz device names (Monitor DoCumentation)
*KCC,5,101,SYS	;Local ersatz device names (C Compiler)
*ASG,66,3024,JOB	;SPR transfer area (DSKB: only)
*	;End user defined ersatz device names
*PIVOT,,RUNFLG,,
*PATH,,RUNFLG,UNIQ.2,
*<<>,PATH,RUNFLG!APPFLG,,
*<=>,PATH,RUNFLG!APPFLG,,
*<>>,PATH,RUNFLG!APPFLG,,
*WHO,WHO,RUNFLG!NOLOGIN!APPFLG,UNIQ.1!UNIQ.2,WHO
*LINE,WHO,RUNFLG!NOLOGIN!APPFLG,UNIQ.1!UNIQ.2,
*STRUCT,WHO,RUNFLG!NOLOGIN!APPFLG,,
*UNIT,WHO,RUNFLG!NOLOGIN!APPFLG,,
*NCOPY,#RUNNFT,RUNFLG,,
*NDELET,#RUNNFT,RUNFLG,,
*NDIREC,#RUNNFT,RUNFLG,,
*NMOVE,#RUNNFT,RUNFLG,,
*NRENAM,#RUNNFT,RUNFLG,,
*NREVIE,#RUNNFT,RUNFLG,,
*NTYPE,#RUNNFT,RUNFLG,,
*TLINK,#RUNNFT,RUNFLG,,
*TYLOG,,RUNFLG!APPFLG,,
*FMAINT,,RUNFLG,,
*ELF,,RUNFLG,,
*	;End user defined commands
*DUMB					;NEW CLASS
*80					;WIDTH
*0					;LENGTH
*0					;FILL
*XON,CRLF,LC				;BITS
*0					;TABLE ADDRESSES
*0
*0					;CONFORMANCE LEVELS
*0
*					;NO ATTRIBUTES
*					;NO MEMBER TYPES
*					;DONE DEFINING CLASSES
*VT52					;CLASS TO EXTEND
*H19					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT52
*VT100					;CLASS TO EXTEND
*H19A					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT100
*VT200					;CLASS TO EXTEND
*DAS21A					;NEW MEMBER TYPE
*					;ADD NO BITS
*VFW					;NO 132-COLUMN MODE
*					;DONE EXTENDING VT200
*					;DONE EXTENDING CLASSES
*DUMB					;DEFAULT TTY TYPE FOR SYSTEM
=^Z
M1042F::
.PA =F:
.RUN DSK:MONGEN
*N	;Write no MONGEN.MIC
*SHORT	;Type of help desired
*SYS	;Hardware dialog
*	;File name
*KL	;Processor type
*1	;# of CPUs
*RF###  DEC10 Development
*1042	;CPU0 serial number
*Y	;Exclude monitor overhead ?
*Y	;EBOX/MBOX runtime accounting ?
*Y	;Exclude PI time ?
*Y	;Account verification ?
*Y	;MOS memory?
*YES	;SCA support?
*YES	;Ethernet support
*NO	;SA10s
*NO	;RP01
*NO	;DRUMS
*NO	;RS04
*NO	;RPXKON (Prompt)
*NO	;RNXKON
*YES	;RAXKON
*NO	;TM2KON
*NO	;TX1KON
*YES	;TD2KON
*NO	;T78KON
*NO	;TM10B
*NO	;TC10C
*YES	;LPTSER
*NO	;DLPSER
*NO	;PLTSER
*NO	;CDRSER
*NO	;DCRSER
*N	;CDPSER
*N	;PTPSER
*N	;PTRSER
*Y	;D8SINT
*Y	;D6SINT
*Y	;MCB
*NO	;DC10
*16	;M0TTDN
*CTY	;OPR
*5-23	;Data set lines on CPU0
*	;End of data set lines
*50	;Jobs
*	;Pages core/user
*2048	;Total core
*4	;Real time devices
*10	;Core for non-locking jobs
*50	;Pages of EVM
*15	;# HPQs
*NO	;METER
*Y	;KASER ?
*Y	;MPXSER ?
*Y	;PSISER ?
*Y	;IPCSER ?
*Y	;ENQ/DEQ ?
*6	;Disk set
*NO	;Device loop
*20	;# PTYs
*Y	;Networks supported ?
;Central site name
*KL1042
*40	;# remote TTYs
*YES	;ANF-10 software?
*	;Default node name
*42	;Node number
*YES	;SET HOSTESS inbound
*YES	;SET HOSTESS outbound
*YES	;CDRs ?
*YES	;LPTs ?
*NO	;PTP
*NO	;PTR
*NO	;PLT
*YES	;DDPs ?
*YES	;RDXs ?
*YES	;TSKs ?
*50	;# of devices that can be connected
*YES	;DECnet software?
*	;Default node name
*7	;DECnet area number
*80	;DECnet node number
*ROUTING;DECnet router type
*	;Default xmit password
*YES	;NRTSER
*YES	;LAT software?
*	;Default service name
*	;Maximum number of LAT circuits
*3-4,7,10,18,29,45-46	;Service groups enabled
*TTDMOS,96	;Make -20F strings longer
*MSGMAX,596	;Large network message size to accomodate DECnetwork
*M.CBMX,400	;Big disk cache for big SIRS ufds
*FLCDEF,0	;Default filler class 
*TTYWID,80	;default tty width
*TTCHKS,8	;Larger tty chunk size
*TTYLCT,0	;TTY LC
*%RTBEA,512	;Maximum DECnet broadcast endnode adjacencies
*%DLBSZ,1476	;Maximum DECnet message size on ethernet
*%RTCET,2	;Circuit cost for Ethernet device
*%RTCDM,17	;Circuit cost for DMR device
*%RTCKD,20	;Circuit cost for KDP device
*	;End decimal value definitions
*CHGPPP,<20040,,0> ;Poke or Admin privs to do CHGPPN
*PRVPRV,<^-40,,0> ;No admin privs for automatic jobs
*PRVFIL,055
*ATODMP,0	;Do not dump if uptime .LT. 5 minutes
*RTCH1,1	;Reserve PI channel 1 for real time
*MTDLTP,0	;Standard magtape labels are bypass
*ANFNIP,60026	;ANF Ethernet protocol 60-16
*M.EDIT,1	;Enable TTY EDITOR
*DSDRIC,0	;Disable INITIA on dataset lines
*M.DNMX,140000	;Maximum for DECnet freecore
*	;End octal value definitions
*	;End SIXBIT value definitions
*	;DEV,PI
*	;DEV,PI,#
*	;DEV,PI,AC
*MDC,5,100,SYS	;Local ersatz device names (Monitor DoCumentation)
*KCC,5,101,SYS	;Local ersatz device names (C Compiler)
*ASG,66,3024,JOB	;SPR transfer area (DSKB: only)
*	;End user defined ersatz device names
*PIVOT,,RUNFLG,,
*PATH,,RUNFLG,UNIQ.2,
*<<>,PATH,RUNFLG!APPFLG,,
*<=>,PATH,RUNFLG!APPFLG,,
*<>>,PATH,RUNFLG!APPFLG,,
*WHO,WHO,RUNFLG!NOLOGIN!APPFLG,UNIQ.1!UNIQ.2,WHO
*LINE,WHO,RUNFLG!NOLOGIN!APPFLG,UNIQ.1!UNIQ.2,
*STRUCT,WHO,RUNFLG!NOLOGIN!APPFLG,,
*UNIT,WHO,RUNFLG!NOLOGIN!APPFLG,,
*NCOPY,#RUNNFT,RUNFLG,,
*NDELET,#RUNNFT,RUNFLG,,
*NDIREC,#RUNNFT,RUNFLG,,
*NMOVE,#RUNNFT,RUNFLG,,
*NRENAM,#RUNNFT,RUNFLG,,
*NREVIE,#RUNNFT,RUNFLG,,
*NTYPE,#RUNNFT,RUNFLG,,
*TLINK,#RUNNFT,RUNFLG,,
*TYLOG,,RUNFLG!APPFLG,,
*FMAINT,,RUNFLG,,
*ELF,,RUNFLG,,
*SHOW,SETSHO,RUNFLG!NOLOGIN,,
*	;End user defined commands
*DUMB					;NEW CLASS
*80					;WIDTH
*0					;LENGTH
*0					;FILL
*XON,CRLF,LC				;BITS
*0					;TABLE ADDRESSES
*0
*0					;CONFORMANCE LEVELS
*0
*					;NO ATTRIBUTES
*					;NO MEMBER TYPES
*					;DONE DEFINING CLASSES
*VT52					;CLASS TO EXTEND
*H19					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT52
*VT100					;CLASS TO EXTEND
*H19A					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT100
*VT200					;CLASS TO EXTEND
*DAS21A					;NEW MEMBER TYPE
*					;ADD NO BITS
*VFW					;NO 132-COLUMN MODE
*					;DONE EXTENDING VT200
*					;DONE EXTENDING CLASSES
*DUMB					;DEFAULT TTY TYPE FOR SYSTEM
=^Z
;KL1026 "RL" MONGEN dialog
;
;	Standard KL triple-processor
;		DECtapes
;		KA10 floating point simulation
M1026L::
.PA =L:
.RUN DSK:MONGEN
*N	;Write no MONGEN.MIC
*SHORT	;Type of help desired
*SYS	;Hardware dialog
*	;File name
*KL	;Processor type
*3	;# of CPUs
*RL###  DEC10 Development
*1026	;CPU0 serial number
*1042	;CPU1 serial number
*1322	;CPU2 serial number
*Y	;Exclude monitor overhead ?
*Y	;EBOX/MBOX runtime accounting ?
*Y	;Exclude PI time ?
*Y	;Account verification ?
*Y	;MOS memory?
*YES	;SCA support?
*YES	;Ethernet support
*YES	;SA10s
*NO	;RP01
*NO	;DRUMS
*NO	;RS04
*YES	;RPXKON (Prompt)
*2,2,2	;Kontrollers per CPU
*NO	;Done
*NO	;RNXKON
*YES	;RAXKON
*YES	;DSXKON
*PROMPT	;TM2KON
*1,1,2	;Kontrollers per CPU
*NO	;DONE
*YES	;TX1KON
*YES	;TD2KON
*YES	;T78KON
*NO	;TM10B
*NO	;TC10C
*YES	;TS1KON
*PROMPT	;LPTSER
*0,1,0	;Per-CPU reservations
*NO	;DONE
*NO	;DLPSER
*NO	;PLTSER
*NO	;CDRSER
*NO	;DCRSER
*PROMPT	;CDPSER
*0,0,1	;DEVICES PER CPU
*NO	;DONE
*PROMPT	;PTPSER
*0,0,1	;DEVICES PER CPU
*NO	;DONE
*PROMPT	;PTRSER
*0,0,1	;DEVICES PER CPU
*NO	;DONE
*Y	;D8SINT
*Y	;D6SINT
*Y	;MCB
*NO	;DC10
*16	;M0TTDN
*16	;M1TTDN
*16	;M2TTDN
*CTY	;OPR
*5-23	;Data set lines on CPU0
*31-47	;Data set lines on CPU1
*55-73	;Data set lines on CPU2
*	;End of data set lines
*100	;Jobs
*	;Pages core/user
*4096	;Total core
*4	;Real time devices
*10	;Core for non-locking jobs
*50	;Pages of EVM
*15	;# HPQs
*NO	;METER
*Y	;KASER ?
*Y	;MPXSER ?
*Y	;PSISER ?
*Y	;IPCSER ?
*Y	;ENQ/DEQ ?
*26	;Disk set
*YES	;Device loop
*NO	;DIS device
*0	;# TD10s
*0	;DA28s
*0	;DAS78s
*0	;DN60s
*0	;DN87s
*1	;# TD10s
*4	;# DTAs
*0	;# TD10s
*20	;# PTYs
*Y	;Networks supported ?
;Central site name
*KL1026
*50	;# remote TTYs
*YES	;ANF-10 software?
*	;Default node name
*26	;Node number
*YES	;SET HOSTESS inbound
*YES	;SET HOSTESS outbound
*YES	;CDRs ?
*YES	;LPTs ?
*NO	;PTP
*NO	;PTR
*NO	;PLT
*YES	;DDPs ?
*YES	;RDXs ?
*YES	;TSKs ?
*250	;# of devices that can be connected
*YES	;DECnet software?
*	;Default node name
*7	;DECnet area number
*110	;DECnet node number
*NONROUTING;DECnet router type
*	;Default xmit password
*YES	;NRTSER
*YES	;LAT software?
*	;Default service name
*	;Maximum number of LAT circuits
*3-4,7,10,18,29,45-46	;Service groups enabled
*TTDMOS,96	;Make -20F strings longer
*MSGMAX,596	;Large network message size to accomodate DECnetwork
*M.CBMX,400	;Big disk cache for big SIRS ufds
*FLCDEF,0	;Default filler class 
*TTYWID,80	;default tty width
*TTCHKS,8	;Larger tty chunk size
*TTYLCT,0	;TTY LC
*%RTBEA,512	;Maximum DECnet broadcast endnode adjacencies
*%DLBSZ,1476	;Maximum DECnet message size on ethernet
*%RTCET,2	;Circuit cost for Ethernet device
*%RTCDM,17	;Circuit cost for DMR device
*%RTCKD,20	;Circuit cost for KDP device
*	;End decimal value definitions
*CHGPPP,<20040,,0> ;Poke or Admin privs to do CHGPPN
*PRVPRV,<^-40,,0> ;No admin privs for automatic jobs
*PRVFIL,055
*ATODMP,0	;Do not dump if uptime .LT. 5 minutes
*RTCH1,1	;Reserve PI channel 1 for real time
*MTDLTP,0	;Standard magtape labels are bypass
*ANFNIP,60026	;ANF Ethernet protocol 60-16
*M.EDIT,1	;Enable TTY EDITOR
*DSDRIC,0	;Disable INITIA on dataset lines
*M.DNMX,140000	;Maximum for DECnet freecore
*CSBORG,320000	;Make room for SA10 code
*MONORG,330000	; ...
*	;End octal value definitions
*	;End SIXBIT value definitions
*	;DEV,PI
*	;DEV,PI,#
*	;DEV,PI,AC
*MDC,5,100,SYS	;Local ersatz device names (Monitor DoCumentation)
*KCC,5,101,SYS	;Local ersatz device names (C Compiler)
*ASG,66,3024,JOB	;SPR transfer area (DSKB: only)
*	;End user defined ersatz device names
*PIVOT,,RUNFLG,,
*PATH,,RUNFLG,UNIQ.2,
*<<>,PATH,RUNFLG!APPFLG,,
*<=>,PATH,RUNFLG!APPFLG,,
*<>>,PATH,RUNFLG!APPFLG,,
*WHO,WHO,RUNFLG!NOLOGIN!APPFLG,UNIQ.1!UNIQ.2,WHO
*LINE,WHO,RUNFLG!NOLOGIN!APPFLG,UNIQ.1!UNIQ.2,
*STRUCT,WHO,RUNFLG!NOLOGIN!APPFLG,,
*UNIT,WHO,RUNFLG!NOLOGIN!APPFLG,,
*NCOPY,#RUNNFT,RUNFLG,,
*NDELET,#RUNNFT,RUNFLG,,
*NDIREC,#RUNNFT,RUNFLG,,
*NMOVE,#RUNNFT,RUNFLG,,
*NRENAM,#RUNNFT,RUNFLG,,
*NREVIE,#RUNNFT,RUNFLG,,
*NTYPE,#RUNNFT,RUNFLG,,
*TLINK,#RUNNFT,RUNFLG,,
*TYLOG,,RUNFLG!APPFLG,,
*FMAINT,,RUNFLG,,
*ELF,,RUNFLG,,
*SHOW,SETSHO,RUNFLG!NOLOGIN,,
*	;End user defined commands
*DUMB					;NEW CLASS
*80					;WIDTH
*0					;LENGTH
*0					;FILL
*XON,CRLF,LC				;BITS
*0					;TABLE ADDRESSES
*0
*0					;CONFORMANCE LEVELS
*0
*					;NO ATTRIBUTES
*					;NO MEMBER TYPES
*					;DONE DEFINING CLASSES
*VT52					;CLASS TO EXTEND
*H19					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT52
*VT100					;CLASS TO EXTEND
*H19A					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT100
*VT200					;CLASS TO EXTEND
*DAS21A					;NEW MEMBER TYPE
*					;ADD NO BITS
*VFW					;NO 132-COLUMN MODE
*					;DONE EXTENDING VT200
*					;DONE EXTENDING CLASSES
*DUMB					;DEFAULT TTY TYPE FOR SYSTEM
=^Z
;TWINKY "RS" MONGEN dialog
;
;	Standard KS single-processor
M4097S::
.PA =S:
.RUN DSK:MONGEN
*N	;Write no MONGEN.MIC
*SHORT	;Type of help desired
*SYS	;Hardware dialog
*	;File name
*KS	;Processor type
*RS###  Hostess Twinky
*4097	;CPU0 serial number
*Y	;Exclude monitor overhead ?
*Y	;Account verification ?
*NO	;Ethernet support
*NO	;RPXKON (prompt)
*YES	;TM2KON
*YES	;UNIBUS line printer service
*YES	;UNIBUS card reader service
*8	;# DZ lines
*CTY	;OPR
*0-6	;Data set lines
*	;End of data set lines
*30	;Jobs
*	;Pages core/user
*512	;Total core
*60	;Ticks/sec
*Y	;Allow locking ?
*10	;Core for non-locking jobs
*10	;Pages of EVM
*2	;# HPQs
*NO	;METER
*Y	;KASER ?
*Y	;MPXSER ?
*Y	;PSISER ?
*Y	;IPCSER ?
*Y	;ENQ/DEQ ?
*7	;Disk set
*YES	;Weird hardware
*1	;# RX211 Floppy disk controllers
*2	;# RX02 drives
*2	;# KMC/DUP-11s
*ANF10	;Default for line 0 (Goes to NOVA/KL1026)
*DECNET	;Default for line 1 (Goes to JINX/KL1026)
*0	;# DMR11s
*15	;# PTYs
*Y	;Networks supported ?
;Central site name
*TWINKY
*20	;# remote TTYs
*YES	;ANF-10 software?
*	;Default node name
*77	;Node number
*YES	;SET HOSTESS inbound
*YES	;SET HOSTESS outbound
*YES	;CDRs ?
*YES	;LPTs ?
*NO	;PTP
*NO	;PTR
*NO	;PLT
*NO	;DDPs ?
*YES	;RDXs ?
*YES	;TSKs ?
*32	;# of devices that can be connected
*YES	;DECnet softwre?
*	;Default node name
*7	;DECnet area number
*117	;Our central site node number
*ROUTING;DECnet router type
*	;Default xmit password
*YES	;NRTSER
*MSGMAX,596	;Large network message size to accomodate DECnetwork
*TTYWID,80	;default tty width
*TTCHKS,8	;increased chunk size
*TTYLCT,0	;default tty lc
*%RTCET,2	;Circuit cost for Ethernet device
*%RTCDM,17	;Circuit cost for DMR device
*%RTCKD,20	;Circuit cost for KDP device
*	;End decimal value definitions
*CHGPPP,<20040,,0> ;Poke or Admin privs to do CHGPPN
*PRVPRV,<^-40,,0> ;No admin privs for automatic jobs
*PRVFIL,055
*ATODMP,0	;Do not dump if uptime .LT. 5 minutes
*RTCH1,1	;Reserve PI channel 1 for real time
*MTDLTP,0	;Standard magtape labels are bypass
*M.EDIT,1	;Enable TTY EDITOR
*DSDRIC,0	;Disable INITIA on dataset lines
*	;End octal value definitions
*	;Sixbit value definitions
*	;DEV,PI
*	;DEV,PI,#
*	;DEV,PI,AC
*MDC,5,100,SYS	;Local ersatz device names (Monitor DoCumentation)
*KCC,5,101,SYS	;Local ersatz device names (C Compiler)
*ASG,66,3024,JOB	;SPR transfer area (DSKB: only)
*	;End user defined ersatz device names
*PIVOT,,RUNFLG,,
*PATH,,RUNFLG,UNIQ.2,
*<<>,PATH,RUNFLG!APPFLG,,
*<=>,PATH,RUNFLG!APPFLG,,
*<>>,PATH,RUNFLG!APPFLG,,
*WHO,,RUNFLG!NOLOGIN,UNIQ.1!UNIQ.2,WHO
*LINE,WHO,RUNFLG!NOLOGIN,UNIQ.1!UNIQ.2,
*NCOPY,#RUNNFT,RUNFLG,,
*NDELET,#RUNNFT,RUNFLG,,
*NDIREC,#RUNNFT,RUNFLG,,
*NMOVE,#RUNNFT,RUNFLG,,
*NRENAM,#RUNNFT,RUNFLG,,
*NREVIE,#RUNNFT,RUNFLG,,
*NTYPE,#RUNNFT,RUNFLG,,
*TLINK,#RUNNFT,RUNFLG,,
*TYLOG,,RUNFLG!APPFLG,,
*FMAINT,,RUNFLG,,
*ELF,,RUNFLG,,
*SHOW,SETSHO,RUNFLG!NOLOGIN,,
*	;End user defined commands
*DUMB					;NEW CLASS
*80					;WIDTH
*0					;LENGTH
*0					;FILL
*XON,CRLF,LC				;BITS
*0					;TABLE ADDRESSES
*0
*0					;CONFORMANCE LEVELS
*0
*					;NO ATTRIBUTES
*					;NO MEMBER TYPES
*					;DONE DEFINING CLASSES
*VT52					;CLASS TO EXTEND
*H19					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT52
*VT100					;CLASS TO EXTEND
*H19A					;NEW MEMBER TYPE
*					;NORMAL BITS
*
*					;DONE EXTENDING VT100
*VT200					;CLASS TO EXTEND
*DAS21A					;NEW MEMBER TYPE
*					;ADD NO BITS
*VFW					;NO 132-COLUMN MODE
*					;DONE EXTENDING VT200
*					;DONE EXTENDING CLASSES
*DUMB					;DEFAULT TTY TYPE FOR SYSTEM
=^Z
