;;; -*- Mode: Lisp; Package: MAC-TYPES; Base: 10; -*-
;;;
;;; ___ mac-types-utils.lisp _________________________________________
;;;
;;; Miscellaneous utilities to convert between data of different
;;; types. 
;;;
;;; $URL: https://mm1.local/svn/private/trunk/lib/lisp/mac-types/mac-types-utils.lisp $
;;; $Id: mac-types-utils.lisp 121 2006-11-04 19:09:49Z greg $

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

(defun unsigned-wide->num (uw)
  (declare (inline))
  (logior (ash (fli:foreign-slot-value uw 'hi) 32)
	  (fli:foreign-slot-value uw 'lo)))

(defun uint64->num (ui)
  (declare (inline))
  (fli:with-coerced-pointer (uw :type 'unsigned-wide) ui
    (unsigned-wide->num uw)))

(defun num->unsigned-wide (num uw)
  (declare (inline))
  (setf (fli:foreign-slot-value uw 'hi) (ash num -32)) ;; doesn't handle signed numbers
  (setf (fli:foreign-slot-value uw 'lo) (mask-field (byte 32 0) num))
  uw)

(defun num->uint64 (num ui)
  (declare (inline))
  (fli:with-coerced-pointer (uw :type 'unsigned-wide) ui
    (num->unsigned-wide num uw)
    ui))

