;;;; Engine - engine.asd Engine ASDF definition file
;;;; Copyright (C) 2011  Alexander Kahl <e-user@fsfe.org>
;;;; This file is part of Engine.
;;;; Engine is free software; you can redistribute it and/or modify it
;;;; under the terms of the GNU Affero General Public License as
;;;; published by the Free Software Foundation; either version 3 of the
;;;; License, or (at your option) any later version.
;;;;
;;;; Engine is distributed in the hope that it will be useful,
;;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;; GNU General Public License for more details.
;;;;
;;;; You should have received a copy of the GNU General Public License
;;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(in-package :cl-user)

(defpackage :engine-system
  (:use :cl :asdf))

(in-package :engine-system)

(asdf:defsystem :engine
                :description "Engine next generation internet Emacs"
                :author "Alexander Kahl <e-user@fsfe.org>"
                :license "AGPLv3+"
                :depends-on (:hunchentoot :osicat :swank :cl-who :css-lite :parenscript
                             :cl-ppcre :bordeaux-threads :alexandria :closer-mop :flexichain
                             :trivial-garbage :cl-containers
                             ; socket.io
                             :hunchensocket :uuid :cl-json :cl-heredoc :alexandria)
                :components
                ((:module "server"
                          :serial t
                          :components
                          ((:file "package")
                           (:file "socket.io")
                           (:file "buffer")
                           (:file "utilities")))))
