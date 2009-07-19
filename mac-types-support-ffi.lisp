;;; -*- Mode: Lisp; -*-
;;;
;;; ___ mac-types-support-ffi.lisp ___________________________________
;;;
;;; LispWorks foreign function definitions for wrappers around
;;; Math64.h funcitons.
;;;
;;; $URL: https://mm1.local/svn/private/trunk/lib/lisp/mac-types/mac-types-support-ffi.lisp $
;;; $Id: mac-types-support-ffi.lisp 209 2009-07-19 22:31:46Z greg $
;;;

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

(fli:define-foreign-function (u64-set-s32 "MTFFI_U64SetS32" :source)
                             ((io (:pointer uint64)) (value sint32))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64-set-u32 "MTFFI_U64SetU32" :source)
                             ((io (:pointer uint64)) (value uint32))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64-add "MTFFI_U64Add" :source)
                             ((io (:pointer uint64)) (a (:pointer uint64)))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64-subtract "MTFFI_U64Subtract" :source)
                             ((io (:pointer uint64)) (a (:pointer uint64)))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64-multiply "MTFFI_U64Multiply" :source)
                             ((io (:pointer uint64)) (a (:pointer uint64)))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64-mod "MTFFI_U64Mod" :source)
                             ((io (:pointer uint64)) (a (:pointer uint64)))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64-div "MTFFI_U64Div" :source)
                             ((io (:pointer uint64)) (a (:pointer uint64)))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64-compare "MTFFI_U64Compare" :source)
                             ((a (:pointer uint64)) (b (:pointer uint64)))
                             :result-type
			     sint32
                             :language
                             :ansi-c)
(fli:define-foreign-function (u64->unsigned-wide "MTFFI_U64SetUnsignedWide" :source)
                             ((io (:pointer uint64)) (uw (:pointer unsigned-wide)))
                             :result-type :void
                             :language
                             :ansi-c)
(fli:define-foreign-function (unsigned-wide->u64 "MTFFI_UnsignedWideSetU64" :source)
                             ((uw (:pointer unsigned-wide)) (in (:pointer uint64)))
                             :result-type :void
                             :language
                             :ansi-c)
