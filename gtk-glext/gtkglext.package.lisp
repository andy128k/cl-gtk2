(defpackage :gtkglext
  (:use :cl :cffi :gobject :gtk :gdk :glib :iter)
  (:export #:with-gl-context #:with-matrix-mode
	   #:gl-drawing-area
           #:gl-drawing-area-on-expose
           #:gl-drawing-area-on-init))

(in-package :gtkglext)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-foreign-library gtkglext
    (:unix (:or "libgtkglext-x11-1.0.so.0" "libgtkglext-x11-1.0.so"))
    (t (:default "libgtkglext-1.0")))
  (define-foreign-library gdkglext
    (:unix (:or "libgdkglext-x11-1.0.so.0" "libgdkglext-x11-1.0.so"))
    (t (:default "libgdkglext-1.0"))))

(use-foreign-library gtkglext)
(use-foreign-library gdkglext)
