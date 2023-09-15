## DXF Utilities parameter file 

## Rules
########

## Empty lines are ignored.
## Line starting with '##' indicates comment-line and is ignored.
## Order of lines is not important.
## Case of letters is not important (except of file names - Cimatron rules).
## Each line starts with a keyword.
## To continue arguments on next line finish line with \<CR> 
## and continue on next line.
## If same keyword appears more than once:
##    - If it can be accumulated - it will,
##    - else the last line is considered the right.
## Line '##!!! OLD_ALGORITHM {YES|NO}' indicates Data interface version

## Syntax of this specification:
################################

##  |  - separates between different options to argument.
## {A} - argument is required.
## [A] - argument is optional.
## (n-m) - range of possible values.
## <A> - argument is the default value if no value is given.
## Upper case words are constatnts (fixed), and lower case are variables.
## ASK means the user will be asked during program operation.


## Syntax of DXF parameters options:
#####################################

##  DXF INTERACTION PARAMETERS:
##==============================

## Mode of operation for read-dxf. Optional backup for batch mode.
## SELECT R-MODE                  {<ASK> | INTER | BATCH}    [BACKUP | <NOBACKUP>]

## Mode of operation for write-iges.
## SELECT W-MODE                  {<ASK> | INTER | BATCH} 

## Logfile control: YES - logfile, NO - screen.
## SELECT R-LOG-FILE              {YES | NO | <ASK>}

## SELECT W-LOG-FILE              {YES | NO | <ASK>}

## INPUT DXF FILE PARAMETERS:
##===========================

## DXF file units
## SET    R-UNITS                 { <MM> | CM | METER | INCH | FEET | FILE-UNITS}

## Read dimensions as group or as dimension.
## SELECT R-DIMENSION-AS          {<GROUP> | DIMENSION}

## Read ATTDEF and ATTRIB DXF entities as Note or as Attribute records.
## SELECT R-ATTRIBUTES-AS       { <NOTE> | ATTRIBUTES }

## DXF thickness 
## SELECT R-THICKNESS             {<IMPLEMENT> | IGNORE}

## Use POLYLINE display point to create POLYLINE (curves) in Cimatron.
## SELECT R-POLYLINE-DISPLAY-POINTS    {<IGNORE> | USE}

## Translate 3DFACE entities boundaries only.
## SELECT R-3DFACE-AS      {<PLFACE> | BOUNDARIES}

## Place Drafting entities 
## SELECT R-DRAFTING-ENTITIES-TO {<MODEL> | VIEW}

## Translate Paper-Space
## SELECT R-PAPER-SPACE {<YES> | NO}

## Split to many pfm file, in order to process more that 64,000 entities
## SELECT R-SPLIT-FILE          {<OFF>| ON}

## OUTPUT DXF FILE PARAMETERS:
##============================

## Write dimensions as group or as dimension.
## SELECT W-DIMENSION-AS          {<GROUP> | DIMENSION}

## Explode SOLID model to surfaces, boundaries or both.
## SELECT W-SOLID-EXPLODE-AS      {SURFACES | BOUNDARIES | <BOTH>}

## Ignore assembly suppressed parts.
## SELECT W-IGNORE-SUPPRESSED-PARTS { <NO> | YES }

## Set levels mask as in Cimatron part-file, or set all levels ON.
## SELECT W-LEVEL-MASK            {<ALL-ON> | AS-IS} 

## Tolerance for writing approximation.
## SET    W-TOL                   {approximation-tolerance(0.001-100) <0.1>}

## Number of precision digits
## SET    W-PRECISION             {precision(1-9) <6>}

## Save file as AutoCAD file version12/13/14/2000/2000i.
## SELECT W-FILE-AS				  {AUTOCAD12 | AUTOCAD13 | <AUTOCAD14> | AUTOCAD2000 | AUTOCAD2000i}

## Write views as 2D or 3D.
## SELECT W-3D-VIEW-AS			  {2D | <3D>}

## External instances grouped or exploded.
## SELECT W-EXTERNAL-EXPLODE {YES | <NO>}

## Subview instances grouped or exploded.
## SELECT W-SUBVIEW-INSTANCE-EXPLODE {YES | <NO>}

## Write notes as AutoCAD TEXT or as AutoCAD MTEXT.
## SELECT W-NOTE-AS 			  {TEXT | <MTEXT>}

## Approximate all curves to polygon.
## SELECT W-CRV-TO-POLYGON {<YES> | NO}

##  CONVERSIONS:
##==================

## Text conversion for Read/Write DXF utility, 
## MAP    TEXT   {DXF-font}   {cim-font}  [ {char-mapping-area-number | DEFAULT} \
   [ { NONE | 8BIT | 16BIT | KEYBOARD } [REVERSE] ] ]

## Text conversion for Read DXF utility, 
## MAP  R-TEXT   {DXF-font}   {cim-font}  [ {char-mapping-area-number | DEFAULT} \
   [ { NONE | 8BIT | 16BIT | KEYBOARD } [REVERSE] ] ]

## Text conversion for Write DXF utility, 
## MAP  W-TEXT   {DXF-font}   {cim-font}  [ {char-mapping-area-number | DEFAULT} \
   [ { NONE | 8BIT | 16BIT | KEYBOARD } [REVERSE] ] ]

## WARNING !!!
## Remember that char-mapping-area-number in all MAP TEXT statements
## must be a hexadecimal number.

## Line-font conversion for Read/Write DXf utility, 
## DXF line-font with Cimatron equivalent line-font
## MAP    LINE-FONT               {dxf-line-font}  {cim-line-font(1-8)}

## Line-font conversion for Read DXf utility, 
## DXF line-font with Cimatron equivalent line-font 
## MAP    R-LINE-FONT             {dxf-line-font}  {cim-line-font(1-8)}

## Line-font conversion for Write DXf utility, 
## Cimatron line-font with equivalent DXF line-font 
## MAP    W-LINE-FONT             {dxf-line-font}  {cim-line-font(1-8)}

## Color conversion, DXF color with Cimatron equivalent color.
## MAP    COLOR                   {dxf-color}  {cim-color(1-15)}

## Color-Pen conversion, DXF color with Cimatron pen.
## MAP    PEN                     {dxf-color}  {cim-pen(1-8)}

##  GENERAL:
##==========

## Nested parameters files.
## USE    FILE                    {file-pathname}



###################################################################

## Defaults:
##==========

SELECT R-MODE      ASK
SELECT R-LOG-FILE  ASK

SELECT W-MODE      ASK
SELECT W-LOG-FILE  ASK

## Input defaults:
##================

SELECT R-DIMENSION-AS             GROUP
SELECT R-ATTRIBUTES-AS            NOTE
SELECT R-THICKNESS                IMPLEMENT
SELECT R-POLYLINE-DISPLAY-POINTS  IGNORE
SELECT R-3DFACE-AS      		  PLFACE
SELECT R-DRAFTING-ENTITIES-TO	  MODEL
SELECT R-PAPER-SPACE		 	  YES
SET    R-UNITS                    FILE-UNITS
SELECT R-SPLIT-FILE          	  OFF

## Output defaults:
##=================

SELECT W-DIMENSION-AS           GROUP
SELECT W-SOLID-EXPLODE-AS  		BOTH
SELECT W-IGNORE-SUPPRESSED-PARTS NO
SELECT W-LEVEL-MASK  			ALL-ON
SELECT W-FILE-AS				AUTOCAD14
SELECT W-3D-VIEW-AS				3D
SELECT W-EXTERNAL-EXPLODE		NO
SELECT W-SUBVIEW-INSTANCE-EXPLODE NO
SELECT W-NOTE-AS			    MTEXT
SELECT W-CRV-TO-POLYGON			YES
SET W-TOL                  0.1
SET W-PRECISION            6

## Default line-font mapping
##==========================
MAP    R-LINE-FONT  DASHED       4
MAP    R-LINE-FONT  HIDDEN       2
MAP    R-LINE-FONT  CENTER       1
MAP    R-LINE-FONT  PHANTOM      1
MAP    R-LINE-FONT  DOT          5
MAP    R-LINE-FONT  DASHDOT      3
MAP    R-LINE-FONT  BORDER       1
MAP    R-LINE-FONT  DIVIDE       1
MAP    R-LINE-FONT  CONTINUOUS   1


## Default color mapping
##======================
MAP    COLOR      1   2
MAP    COLOR      2   3
MAP    COLOR      3   7
MAP    COLOR      4   5
MAP    COLOR      5   4
MAP    COLOR      6   6
MAP    COLOR      7   1

## Font mapping:
##==============

## NOTE :
## To use texts in Japanese, please uncomment following statement:

##MAP    TEXT    STANDARD    standard  80 16BIT

## Also you need to replace your rdxf.cdt and wdxf.cdt files in directory
## cadsys/fonts or cim90dat/fonts with rdxfjpn.cdt and wdxfjpn.cdt !!!


## SELECT W-APPLICATION SPLIT MODEL
## SELECT W-APPLICATION SPLIT VIEW
## SELECT W-APPLICATION SPLIT DRAWING

## SELECT W-APPLICATION [SPLIT | NOT] {MODEL}
## SELECT W-APPLICATION [SPLIT | NOT] {VIEW [view-name(s)]}
## SELECT W-APPLICATION [SPLIT | NOT] {DRAWING [drawing-name(s)]}
## SELECT W-APPLICATION [SPLIT | NOT] {SHEET [sheet-name(s)]}

## SELECT W-ATTRIBUTES [NOT] {LEVEL level-name(s)}
## SELECT W-ATTRIBUTES [NOT] {LINE-FONT line-font-name(s)}
## SELECT W-ATTRIBUTES [NOT] {COLOR color-namber(s)}
## SELECT W-ATTRIBUTES [NOT] {PEN pen-namber(s)}
## SELECT W-ATTRIBUTES [NOT] {BLANK}
## SELECT W-ATTRIBUTES [NOT] {SET SURFACES}
## SELECT W-ATTRIBUTES {FILTER <AND> | OR}

##!!! OLD_ALGORITHM NO