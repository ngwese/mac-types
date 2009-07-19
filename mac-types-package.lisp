;;; -*- Mode: Lisp; Package: MAC-TYPES; Base: 10; -*-
;;;
;;; ___ mac-types-package.lisp _______________________________________
;;;
;;; Package definition for the MAC-TYPES package.
;;;
;;; $URL: https://mm1.local/svn/private/trunk/lib/lisp/mac-types/mac-types-package.lisp $
;;; $Id: mac-types-package.lisp 121 2006-11-04 19:09:49Z greg $

;;; Copyright (c) 2004-2005, Gregory C. Wuller. All rights reserved.
;;;
;;; Redistribution and use in source and binary forms, with or
;;; without modification, are permitted provided that the following
;;; conditions are met:
;;;
;;; * Redistributions of source code must retain the above copyright
;;;   notice, this list of conditions and the following disclaimer.
;;;
;;; * Redistributions in binary form must reproduce the above copyright
;;;   notice, this list of conditions and the following disclaimer in
;;;   the documentation and/or other materials provided with the
;;;   distribution.
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(eval-when (:load-toplevel)
  (pushnew :mac-types *features*))

(defpackage "MAC-TYPES"
  (:nicknames "MAC")
  (:export
   "ABSOLUTE-TIME" 
   "BYTE-COUNT" 
   "BYTE-OFFSET" 
   "BYTE-PTR" 
   "CHAR-PARAMETER" 
   "COMP-TIME-VALUE" 
   "CONST-LOGICAL-ADDRESS" 
   "CONST-STR-FILE-NAME-PARAM" 
   "CONST-STR15-PARAM" 
   "CONST-STR255-PARAM" 
   "CONST-STR27-PARAM" 
   "CONST-STR31-PARAM" 
   "CONST-STR32-PARAM" 
   "CONST-STR63-PARAM" 
   "CONST-STRING-PTR" 
   "COUNTRY-CODE" 
   "DEBUG-STR" 
   "DEBUGGER" 
   "DEBUGGER-MSG" 
   "DURATION" 
   "EXTENDED80" 
   "EXTENDED96" 
   "FIXED" 
   "FIXED-POINT" 
   "FIXED-PTR" 
   "FIXED-RECT" 
   "FLOAT32" 
   "FLOAT32-POINT" 
   "FLOAT64" 
   "FLOAT80" 
   "FLOAT96" 
   "FOUR-CHAR-CODE" 
   "FRACT" 
   "FRACT-PTR" 
   "HANDLE" 
   "INT-FAST16-T" 
   "INT-FAST32-T" 
   "INT-FAST64-T" 
   "INT-FAST8-T" 
   "INT-LEAST16-T" 
   "INT-LEAST32-T" 
   "INT-LEAST64-T" 
   "INT-LEAST8-T" 
   "INT16-T" 
   "INT32-T" 
   "INT64-T" 
   "INT8-T" 
   "INTMAX-T" 
   "INTPTR-T" 
   "ITEM-COUNT" 
   "LANG-CODE" 
   "LOGICAL-ADDRESS" 
   "MAJOR-REV" 
   "MINOR-AND-BUG-REV" 
   "NON-REL-REV" 
   "NUM-VERSION" 
   "NUM-VERSION-VARIANT" 
   "NUM-VERSION-VARIANT-HANDLE" 
   "NUM-VERSION-VARIANT-PTR" 
   "OPTION-BITS" 
   "OSERR" 
   "OSSTATUS" 
   "OSTYPE" 
   "OSTYPE-PTR" 
   "PBVERSION" 
   "PHYSICAL-ADDRESS" 
   "POINT" 
   "POINT-PTR" 
   "PROC-HANDLE" 
   "PROC-PTR" 
   "PTR" 
   "RECT" 
   "RECT-PTR" 
   "REGION-CODE" 
   "REGISTER-T" 
   "REGISTER68-K-PROC-PTR" 
   "RES-TYPE" 
   "RES-TYPE-PTR" 
   "SCRIPT-CODE" 
   "SHORT-FIXED" 
   "SHORT-FIXED-PTR" 
   "SHORT-VERSION" 
   "SINT16" 
   "SINT32" 
   "SINT64" 
   "SINT8" 
   "SIZE" 
   "SIZE-T" 
   "STAGE" 
   "STR-FILE-NAME" 
   "STR15" 
   "STR255" 
   "STR27" 
   "STR31" 
   "STR32" 
   "STR32-FIELD" 
   "STR63" 
   "STRING-HANDLE" 
   "STRING-PTR" 
   "STYLE" 
   "STYLE-FIELD" 
   "STYLE-PARAMETER" 
   "SYS-BREAK" 
   "SYS-BREAK-FUNC" 
   "SYS-BREAK-STR" 
   "TIME-BASE" 
   "TIME-BASE-RECORD" 
   "TIME-RECORD" 
   "TIME-SCALE" 
   "TIME-VALUE" 
   "TIME-VALUE64" 
   "U-INT16-T" 
   "U-INT32-T" 
   "U-INT64-T" 
   "U-INT8-T" 
   "UINT-FAST16-T" 
   "UINT-FAST32-T" 
   "UINT-FAST64-T" 
   "UINT-FAST8-T" 
   "UINT-LEAST16-T" 
   "UINT-LEAST32-T" 
   "UINT-LEAST64-T" 
   "UINT-LEAST8-T" 
   "UINT16" 
   "UINT16-T" 
   "UINT32" 
   "UINT32-T" 
   "UINT64" 
   "UINT64-T" 
   "UINT8" 
   "UINT8-T" 
   "UINTMAX-T" 
   "UINTPTR-T" 
   "UNI-CHAR"
   "UNI-CHAR-COUNT" 
   "UNI-CHAR-COUNT-PTR" 
   "UNI-CHAR-PTR" 
   "UNICODE-SCALAR-VALUE" 
   "UNIVERSAL-PROC-HANDLE" 
   "UNIVERSAL-PROC-PTR" 
   "UNSIGNED-FIXED" 
   "UNSIGNED-FIXED-PTR" 
   "UNSIGNED-WIDE" 
   "UNSIGNED-WIDE-PTR" 
   "UTF16-CHAR" 
   "UTF32-CHAR" 
   "UTF8-CHAR" 
   "VERS-REC" 
   "VERS-REC-HNDL" 
   "VERS-REC-PTR" 
   "VHSELECT" 
   "WIDE" 
   "WIDE-PTR" 

   ;; mac-types-support.c
   "S32-SET"
   "S64-ADD"
   "S64-AND"
   "S64-BITWISE-AND"
   "S64-BITWISE-EOR"
   "S64-BITWISE-NOT"
   "S64-BITWISE-OR"
   "S64-COMPARE"
   "S64-DIV"
   "S64-DIVIDE"
   "S64-EOR"
   "S64-MAX"
   "S64-MIN"
   "S64-MOD"
   "S64-MULTIPLY"
   "S64-NEGATE"
   "S64-NOT"
   "S64-OR"
   "S64-SET"
   "S64-SET-U"
   "S64-SHIFT-LEFT"
   "S64-SHIFT-RIGHT"
   "S64-SUBTRACT"
   "SINT64-TO-UINT64"
   "U32-SET-U"
   "U64-ADD"
   "U64-AND"
   "U64-BITWISE-AND"
   "U64-BITWISE-EOR"
   "U64-BITWISE-NOT"
   "U64-BITWISE-OR"
   "U64-COMPARE"
   "U64-DIV"
   "U64-DIVIDE"
   "U64-EOR"
   "U64-MAX"
   "U64-MOD"
   "U64-MULTIPLY"
   "U64-NOT"
   "U64-OR"
   "U64-SET-S32"
   "U64-SET-U32"
   "U64->UNSIGNED-WIDE"
   "U64-SHIFT-LEFT"
   "U64-SHIFT-RIGHT"
   "U64-SUBTRACT"
   "UINT64-TO-SINT64"
   "UNSIGNED-WIDE->U64"

   ;; utils
   "UNSIGNED-WIDE->NUM"
   "UINT64->NUM"
   "NUM->UNSIGNED-WIDE"
   "NUM->UINT64"
   ))
