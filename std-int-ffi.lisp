;;; -*- Mode: Lisp; Package: MAC-TYPES; Base: 10; -*-
;;;
;;; ___ std-int-ffi.lisp ____________________________________________
;;;
;;; DATE           : 29 Dec 2004 
;;; USER           : greg 
;;; PROCESSED FILE : /usr/include/gcc/darwin/3.3/stdint.h
;;;
;;; $URL: https://mm1.local/svn/private/trunk/lib/lisp/mac-types/std-int-ffi.lisp $
;;; $Id: std-int-ffi.lisp 209 2009-07-19 22:31:46Z greg $

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

;;; Derived from file : "/usr/include/ppc/types.h"

(fli:define-c-typedef (int8-t (:foreign-name "int8_t")) (:signed :char))
(fli:define-c-typedef (u-int8-t (:foreign-name "u_int8_t"))
                      (:unsigned :char))
(fli:define-c-typedef (int16-t (:foreign-name "int16_t")) :short)
(fli:define-c-typedef (u-int16-t (:foreign-name "u_int16_t"))
                      (:unsigned :short))
(fli:define-c-typedef (int32-t (:foreign-name "int32_t")) :int)
(fli:define-c-typedef (u-int32-t (:foreign-name "u_int32_t"))
                      (:unsigned :int))
(fli:define-c-typedef (int64-t (:foreign-name "int64_t")) :long-long)
(fli:define-c-typedef (u-int64-t (:foreign-name "u_int64_t"))
                      (:unsigned :long-long))
(fli:define-c-typedef (register-t (:foreign-name "register_t")) int32-t)
(fli:define-c-typedef (intptr-t (:foreign-name "intptr_t")) :long)
(fli:define-c-typedef (uintptr-t (:foreign-name "uintptr_t"))
                      (:unsigned :long))

;;; Derived from file : "/private/tmp/LWtemp.evasion.local.587.1.h"

(fli:define-c-typedef (uint8-t (:foreign-name "uint8_t")) u-int8-t)
(fli:define-c-typedef (uint16-t (:foreign-name "uint16_t")) u-int16-t)
(fli:define-c-typedef (uint32-t (:foreign-name "uint32_t")) u-int32-t)
(fli:define-c-typedef (uint64-t (:foreign-name "uint64_t")) u-int64-t)
(fli:define-c-typedef (int-least8-t (:foreign-name "int_least8_t"))
                      int8-t)
(fli:define-c-typedef (int-least16-t (:foreign-name "int_least16_t"))
                      int16-t)
(fli:define-c-typedef (int-least32-t (:foreign-name "int_least32_t"))
                      int32-t)
(fli:define-c-typedef (int-least64-t (:foreign-name "int_least64_t"))
                      int64-t)
(fli:define-c-typedef (uint-least8-t (:foreign-name "uint_least8_t"))
                      uint8-t)
(fli:define-c-typedef (uint-least16-t (:foreign-name "uint_least16_t"))
                      uint16-t)
(fli:define-c-typedef (uint-least32-t (:foreign-name "uint_least32_t"))
                      uint32-t)
(fli:define-c-typedef (uint-least64-t (:foreign-name "uint_least64_t"))
                      uint64-t)
(fli:define-c-typedef (int-fast8-t (:foreign-name "int_fast8_t"))
                      int8-t)
(fli:define-c-typedef (int-fast16-t (:foreign-name "int_fast16_t"))
                      int16-t)
(fli:define-c-typedef (int-fast32-t (:foreign-name "int_fast32_t"))
                      int32-t)
(fli:define-c-typedef (int-fast64-t (:foreign-name "int_fast64_t"))
                      int64-t)
(fli:define-c-typedef (uint-fast8-t (:foreign-name "uint_fast8_t"))
                      uint8-t)
(fli:define-c-typedef (uint-fast16-t (:foreign-name "uint_fast16_t"))
                      uint16-t)
(fli:define-c-typedef (uint-fast32-t (:foreign-name "uint_fast32_t"))
                      uint32-t)
(fli:define-c-typedef (uint-fast64-t (:foreign-name "uint_fast64_t"))
                      uint64-t)
(fli:define-c-typedef (intmax-t (:foreign-name "intmax_t")) :long-long)
(fli:define-c-typedef (uintmax-t (:foreign-name "uintmax_t"))
                      (:unsigned :long-long))

;;; /usr/include/stddefs.h

(fli:define-c-typedef (size-t (:foreign-name "size_t"))
                      (:unsigned :long))


