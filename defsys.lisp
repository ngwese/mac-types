;;; -*- Mode: Lisp; -*-
;;;
;;; ___ defsys.lisp _________________________________________________
;;;
;;; $URL: https://mm1.local/svn/private/trunk/lib/lisp/mac-types/defsys.lisp $
;;; $Id: defsys.lisp 209 2009-07-19 22:31:46Z greg $
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

(lw:defsystem mac-types
    ()
  :members ("mac-types-package"
	    "std-int-ffi"
	    "mac-types-ffi"
	    "mac-types-support-ffi"
	    "mac-types-utils")
  :rules ((:in-order-to :compile :all
           (:requires (:load
                       "mac-types-package")))
          (:in-order-to :compile "mac-types-support-ffi"
           (:requires
            (:load "mac-types-ffi")))
          (:in-order-to :compile "mac-types-utils"
           (:requires
            (:load
             "mac-types-support-ffi"
             "mac-types-ffi"
             "std-int-ffi")))))
