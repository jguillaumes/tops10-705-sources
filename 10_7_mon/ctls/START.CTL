!START.CTL - This file creates the tree structure for the monitor builds
!	cleans it out, and creates TOPS10.CMD and .CCL in all the FGEN
!	directories. Read BUILDS.PTH to determine tree structure and
!	TOPS10.FIL to determine files in each directory.
TREE::.CHKPNT TREE
.PA@BUILDS.PTH
!
!Clear out any old .LOG & .COR files
!
.PA=BASE:
.DELETE *.LOG,*.COR
.IF (ERROR)
.COPY = BTS:BTSPRM.UNV
!
!Read BUILDS.PTH, write START.MIC which creates tree structure with CREDIR
!
.R DEC:TECO
=ERCTLS:TREE.TEC^[Y<-1-^N;A>HXYMY^[^[
!
!Create tree structure
!
.NOERROR
.DO START.MIC
.ERROR ?
.DELETE START.MIC
!
!
!
TOPS10::.CHKPNT TOPS10
!
!Make sure we have all the .FIL files we need
!
.CTEST COPY =CTLS:TOPS10.FIL
.CTEST COPY =CTLS:MPE.FIL
.IF (ERROR) .CTEST COPY MPE.FIL=NUL:NUL.FIL
.CTEST COPY =CTLS:UNSUP.FIL
.IF (ERROR) .CTEST COPY UNSUP.FIL=NUL:NUL.FIL
.CTEST COPY =CTLS:DECNET.FIL
.IF (ERROR) .CTEST COPY DECNET.FIL=NUL:NUL.FIL
!
!Read BUILDS.PTH and TOPS10.FIL, write out TOPS10.CMD and .CCL files
!
.R DEC:TECO
=ERTOPS10.TEC^[Y<-1-^N;A>HXYMY^[^[
;
;Check all sources for angle-bracket matching
;
CHECK::.CHKPNT CHECK
.SUBMIT CHECK/BATLOG:SUP/OUTPUT:NOLOG/NOTIFY/TIME:0:10:0
