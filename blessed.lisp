;;;; blessed.lisp

(defpackage #:blessed
  (:use #:cl)
  (:export #:mvbind))

(in-package #:blessed)

(defmacro mvbind (vars value-form &rest body)
  "Short form of multiple-value-bind"
  `(multiple-value-bind ,vars ,value-form ,@body))
