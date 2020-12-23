(defmodule mylfeapp.app
  (behaviour gen_server)
  (export
    ;; app implementation
    (start 2)
    (stop 0)))

(include-lib "logjam/include/logjam.hrl")

;;; --------------------------
;;; application implementation
;;; --------------------------

(defun start (_type _args)
  (log-info "Starting mylfeapp application ...")
  (mylfeapp.sup:start_link))

(defun stop ()
  (mylfeapp.sup:stop)
  'ok)