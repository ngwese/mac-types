;;; -*- Mode: Lisp; Package: MAC-TYPES; -*-
;;;
;;; ___ mac-types-ffi.lisp __________________________________________
;;;
;;; LispWorks foreign function definitions for the MacTypes.h portion
;;; of CarbonCore framework.
;;;
;;; DATE           : 27 Dec 2004 
;;; USER           : greg 
;;; PROCESSED FILE : ~/proj/lib/lisp/mac-types/headers/MacTypes.pp.h
;;;
;;; $URL: https://mm1.local/svn/private/trunk/lib/lisp/mac-types/mac-types-ffi.lisp $
;;; $Id: mac-types-ffi.lisp 209 2009-07-19 22:31:46Z greg $

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

(in-package :mac-types)

;;; Derived from file : "/System/Library/Frameworks/CoreServices.framework/Frameworks/CarbonCore.framework/Headers/MacTypes.h"

(fli:define-c-typedef (uint8 (:foreign-name "UInt8")) (:unsigned :char))
(fli:define-c-typedef (sint8 (:foreign-name "SInt8")) (:signed :char))
(fli:define-c-typedef (uint16 (:foreign-name "UInt16"))
                      (:unsigned :short))
(fli:define-c-typedef (sint16 (:foreign-name "SInt16")) :short)
(fli:define-c-typedef (uint32 (:foreign-name "UInt32"))
                      (:unsigned :long))
(fli:define-c-typedef (sint32 (:foreign-name "SInt32")) :long)
(fli:define-c-struct (wide (:foreign-name "wide"))
                     (hi sint32)
                     (lo uint32))
(fli:define-c-typedef (wide (:foreign-name "wide")) (:struct wide))
(fli:define-c-struct (unsigned-wide (:foreign-name "UnsignedWide"))
                     (hi uint32)
                     (lo uint32))
(fli:define-c-typedef (unsigned-wide (:foreign-name "UnsignedWide"))
                      (:struct unsigned-wide))
(fli:define-c-typedef (sint64 (:foreign-name "SInt64")) :long-long)
(fli:define-c-typedef (uint64 (:foreign-name "UInt64"))
                      (:unsigned :long-long))
(fli:define-c-typedef (fixed (:foreign-name "Fixed")) :long)
(fli:define-c-typedef (fixed-ptr (:foreign-name "FixedPtr"))
                      (:pointer fixed))
(fli:define-c-typedef (fract (:foreign-name "Fract")) :long)
(fli:define-c-typedef (fract-ptr (:foreign-name "FractPtr"))
                      (:pointer fract))
(fli:define-c-typedef (unsigned-fixed (:foreign-name "UnsignedFixed"))
                      (:unsigned :long))
(fli:define-c-typedef (unsigned-fixed-ptr
                       (:foreign-name "UnsignedFixedPtr"))
                      (:pointer unsigned-fixed))
(fli:define-c-typedef (short-fixed (:foreign-name "ShortFixed")) :short)
(fli:define-c-typedef (short-fixed-ptr (:foreign-name "ShortFixedPtr"))
                      (:pointer short-fixed))
(fli:define-c-typedef (float32 (:foreign-name "Float32")) :float)
(fli:define-c-typedef (float64 (:foreign-name "Float64")) :double)
(fli:define-c-struct (float80 (:foreign-name "Float80"))
                     (exp sint16)
                     (man (:c-array uint16 4)))
(fli:define-c-typedef (float80 (:foreign-name "Float80"))
                      (:struct float80))
(fli:define-c-struct (float96 (:foreign-name "Float96"))
                     (exp (:c-array sint16 2))
                     (man (:c-array uint16 4)))
(fli:define-c-typedef (float96 (:foreign-name "Float96"))
                      (:struct float96))
(fli:define-c-struct (float32-point (:foreign-name "Float32Point"))
                     (x float32)
                     (y float32))
(fli:define-c-typedef (float32-point (:foreign-name "Float32Point"))
                      (:struct float32-point))
(fli:define-c-typedef (ptr (:foreign-name "Ptr")) (:pointer :char))
(fli:define-c-typedef (handle (:foreign-name "Handle")) (:pointer ptr))
(fli:define-c-typedef (size (:foreign-name "Size")) :long)
(fli:define-c-typedef (oserr (:foreign-name "OSErr")) sint16)
(fli:define-c-typedef (osstatus (:foreign-name "OSStatus")) sint32)
(fli:define-c-typedef (logical-address
                       (:foreign-name "LogicalAddress"))
                      (:pointer :void))
(fli:define-c-typedef (const-logical-address
                       (:foreign-name "ConstLogicalAddress"))
                      (:pointer (:const :void)))
(fli:define-c-typedef (physical-address
                       (:foreign-name "PhysicalAddress"))
                      (:pointer :void))
(fli:define-c-typedef (byte-ptr (:foreign-name "BytePtr"))
                      (:pointer uint8))
(fli:define-c-typedef (byte-count (:foreign-name "ByteCount")) uint32)
(fli:define-c-typedef (byte-offset (:foreign-name "ByteOffset")) uint32)
(fli:define-c-typedef (duration (:foreign-name "Duration")) sint32)
(fli:define-c-typedef (absolute-time (:foreign-name "AbsoluteTime"))
                      unsigned-wide)
(fli:define-c-typedef (option-bits (:foreign-name "OptionBits")) uint32)
(fli:define-c-typedef (item-count (:foreign-name "ItemCount")) uint32)
(fli:define-c-typedef (pbversion (:foreign-name "PBVersion")) uint32)
(fli:define-c-typedef (script-code (:foreign-name "ScriptCode")) sint16)
(fli:define-c-typedef (lang-code (:foreign-name "LangCode")) sint16)
(fli:define-c-typedef (region-code (:foreign-name "RegionCode")) sint16)
(fli:define-c-typedef (four-char-code (:foreign-name "FourCharCode"))
                      (:unsigned :long))
(fli:define-c-typedef (ostype (:foreign-name "OSType")) four-char-code)
(fli:define-c-typedef (res-type (:foreign-name "ResType"))
                      four-char-code)
(fli:define-c-typedef (ostype-ptr (:foreign-name "OSTypePtr"))
                      (:pointer ostype))
(fli:define-c-typedef (res-type-ptr (:foreign-name "ResTypePtr"))
                      (:pointer res-type))
;(fli:define-c-typedef (boolean (:foreign-name "Boolean"))
;                      (:unsigned :char))
(fli:define-c-typedef (proc-ptr (:foreign-name "ProcPtr"))
                      (:pointer (:function nil :long)))
(fli:define-c-typedef (register68-k-proc-ptr
                       (:foreign-name "Register68kProcPtr"))
                      (:pointer (:function nil :void)))
(fli:define-c-typedef (universal-proc-ptr
                       (:foreign-name "UniversalProcPtr"))
                      proc-ptr)
(fli:define-c-typedef (proc-handle (:foreign-name "ProcHandle"))
                      (:pointer proc-ptr))
(fli:define-c-typedef (universal-proc-handle
                       (:foreign-name "UniversalProcHandle"))
                      (:pointer universal-proc-ptr))
(fli:define-c-typedef (unicode-scalar-value
                       (:foreign-name "UnicodeScalarValue"))
                      uint32)
(fli:define-c-typedef (utf32-char (:foreign-name "UTF32Char")) uint32)
(fli:define-c-typedef (uni-char (:foreign-name "UniChar")) uint16)
(fli:define-c-typedef (utf16-char (:foreign-name "UTF16Char")) uint16)
(fli:define-c-typedef (utf8-char (:foreign-name "UTF8Char")) uint8)
(fli:define-c-typedef (uni-char-ptr (:foreign-name "UniCharPtr"))
                      (:pointer uni-char))
(fli:define-c-typedef (uni-char-count (:foreign-name "UniCharCount"))
                      uint32)
(fli:define-c-typedef (uni-char-count-ptr
                       (:foreign-name "UniCharCountPtr"))
                      (:pointer uni-char-count))
(fli:define-c-typedef (str255 (:foreign-name "Str255"))
                      (:c-array (:unsigned :char) 256))
(fli:define-c-typedef (str63 (:foreign-name "Str63"))
                      (:c-array (:unsigned :char) 64))
(fli:define-c-typedef (str32 (:foreign-name "Str32"))
                      (:c-array (:unsigned :char) 33))
(fli:define-c-typedef (str31 (:foreign-name "Str31"))
                      (:c-array (:unsigned :char) 32))
(fli:define-c-typedef (str27 (:foreign-name "Str27"))
                      (:c-array (:unsigned :char) 28))
(fli:define-c-typedef (str15 (:foreign-name "Str15"))
                      (:c-array (:unsigned :char) 16))
(fli:define-c-typedef (str32-field (:foreign-name "Str32Field"))
                      (:c-array (:unsigned :char) 34))
(fli:define-c-typedef (str-file-name (:foreign-name "StrFileName"))
                      str63)
(fli:define-c-typedef (string-ptr (:foreign-name "StringPtr"))
                      (:pointer (:unsigned :char)))
(fli:define-c-typedef (string-handle (:foreign-name "StringHandle"))
                      (:pointer string-ptr))
(fli:define-c-typedef (const-string-ptr
                       (:foreign-name "ConstStringPtr"))
                      (:pointer (:const (:unsigned :char))))
(fli:define-c-typedef (const-str255-param
                       (:foreign-name "ConstStr255Param"))
                      (:pointer (:const (:unsigned :char))))
(fli:define-c-typedef (const-str63-param
                       (:foreign-name "ConstStr63Param"))
                      (:pointer (:const (:unsigned :char))))
(fli:define-c-typedef (const-str32-param
                       (:foreign-name "ConstStr32Param"))
                      (:pointer (:const (:unsigned :char))))
(fli:define-c-typedef (const-str31-param
                       (:foreign-name "ConstStr31Param"))
                      (:pointer (:const (:unsigned :char))))
(fli:define-c-typedef (const-str27-param
                       (:foreign-name "ConstStr27Param"))
                      (:pointer (:const (:unsigned :char))))
(fli:define-c-typedef (const-str15-param
                       (:foreign-name "ConstStr15Param"))
                      (:pointer (:const (:unsigned :char))))
(fli:define-c-typedef (const-str-file-name-param
                       (:foreign-name "ConstStrFileNameParam"))
                      const-str63-param)
(fli:define-c-struct (point (:foreign-name "Point"))
                     (v :short)
                     (h :short))
(fli:define-c-typedef (point (:foreign-name "Point")) (:struct point))
(fli:define-c-typedef (point-ptr (:foreign-name "PointPtr"))
                      (:pointer point))
(fli:define-c-struct (rect (:foreign-name "Rect"))
                     (top :short)
                     (left :short)
                     (bottom :short)
                     (right :short))
(fli:define-c-typedef (rect (:foreign-name "Rect")) (:struct rect))
(fli:define-c-typedef (rect-ptr (:foreign-name "RectPtr"))
                      (:pointer rect))
(fli:define-c-struct (fixed-point (:foreign-name "FixedPoint"))
                     (x fixed)
                     (y fixed))
(fli:define-c-typedef (fixed-point (:foreign-name "FixedPoint"))
                      (:struct fixed-point))
(fli:define-c-struct (fixed-rect (:foreign-name "FixedRect"))
                     (left fixed)
                     (top fixed)
                     (right fixed)
                     (bottom fixed))
(fli:define-c-typedef (fixed-rect (:foreign-name "FixedRect"))
                      (:struct fixed-rect))
(fli:define-c-typedef (char-parameter (:foreign-name "CharParameter"))
                      :short)
(fli:define-c-typedef (style (:foreign-name "Style")) (:unsigned :char))
(fli:define-c-typedef (style-parameter
                       (:foreign-name "StyleParameter"))
                      :short)
(fli:define-c-typedef (style-field (:foreign-name "StyleField")) style)
(fli:define-c-typedef (time-value (:foreign-name "TimeValue")) :long)
(fli:define-c-typedef (time-scale (:foreign-name "TimeScale")) :long)
(fli:define-c-typedef (comp-time-value (:foreign-name "CompTimeValue"))
                      wide)
(fli:define-c-typedef (time-value64 (:foreign-name "TimeValue64"))
                      sint64)
(fli:define-c-struct (time-base-record
                      (:foreign-name "TimeBaseRecord")
                      (:forward-reference t)))
(fli:define-c-typedef (time-base (:foreign-name "TimeBase"))
                      (:pointer (:struct time-base-record)))
(fli:define-c-struct (time-record (:foreign-name "TimeRecord"))
                     (value comp-time-value)
                     (scale time-scale)
                     (base time-base))
(fli:define-c-typedef (time-record (:foreign-name "TimeRecord"))
                      (:struct time-record))
(fli:define-c-struct (num-version (:foreign-name "NumVersion"))
                     (major-rev uint8)
                     (minor-and-bug-rev uint8)
                     (stage uint8)
                     (non-rel-rev uint8))
(fli:define-c-typedef (num-version (:foreign-name "NumVersion"))
                      (:struct num-version))
(fli:define-c-union (num-version-variant
                     (:foreign-name "NumVersionVariant"))
                    (parts num-version)
                    (whole (:unsigned :long)))
(fli:define-c-typedef (num-version-variant
                       (:foreign-name "NumVersionVariant"))
                      (:union num-version-variant))
(fli:define-c-typedef (num-version-variant-ptr
                       (:foreign-name "NumVersionVariantPtr"))
                      (:pointer num-version-variant))
(fli:define-c-typedef (num-version-variant-handle
                       (:foreign-name "NumVersionVariantHandle"))
                      (:pointer num-version-variant-ptr))
(fli:define-c-struct (vers-rec (:foreign-name "VersRec"))
                     (numeric-version num-version)
                     (country-code :short)
                     (short-version str255)
                     (reserved str255))
(fli:define-c-typedef (vers-rec (:foreign-name "VersRec"))
                      (:struct vers-rec))
(fli:define-c-typedef (vers-rec-ptr (:foreign-name "VersRecPtr"))
                      (:pointer vers-rec))
(fli:define-c-typedef (vers-rec-hndl (:foreign-name "VersRecHndl"))
                      (:pointer vers-rec-ptr))
;(fli:define-c-typedef (byte (:foreign-name "Byte")) uint8)
;(fli:define-c-typedef (signed-byte (:foreign-name "SignedByte")) sint8)
(fli:define-c-typedef (wide-ptr (:foreign-name "WidePtr"))
                      (:pointer wide))
(fli:define-c-typedef (unsigned-wide-ptr
                       (:foreign-name "UnsignedWidePtr"))
                      (:pointer unsigned-wide))
(fli:define-c-typedef (extended80 (:foreign-name "extended80")) float80)
(fli:define-c-typedef (extended96 (:foreign-name "extended96")) float96)
(fli:define-c-typedef (vhselect (:foreign-name "VHSelect")) sint8)
(fli:define-foreign-function (debugger "Debugger" :source)
                             nil
                             :result-type
                             :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (debug-str "DebugStr" :source)
                             ((debugger-msg const-str255-param))
                             :result-type
                             :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (sys-break "SysBreak" :source)
                             nil
                             :result-type
                             :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (sys-break-str "SysBreakStr" :source)
                             ((debugger-msg const-str255-param))
                             :result-type
                             :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (sys-break-func "SysBreakFunc" :source)
                             ((debugger-msg const-str255-param))
                             :result-type
                             :void
                             :language
                             :ansi-c)
