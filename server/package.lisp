;;;; Engine - package.lisp
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

(in-package :hunchentoot)
(export (list 'content-stream 'set-timeouts 'acceptor-listen-socket))

(in-package :engine-system)

(defpackage :websocket
  (:use :cl :hunchentoot :cl-ppcre :alexandria :flexi-streams :trivial-utf-8)
  (:import-from :ironclad :digest-stream)
  (:export :websocket-acceptor))

(defpackage :socket.io
  (:use :cl :hunchentoot :cl-ppcre :uuid))