;;; erbc6.el --- fsbot functions contributed by freenode users, esp. #emacsers.
;; Time-stamp: <2007-11-23 11:30:12 deego>
;; Copyright (C) 2003 D. Goel
;; Emacs Lisp Archive entry
;; Filename: erbc6.el
;; Package: erbc6
;; Author: D. Goel <deego@gnufans.org> and #emacsers
;; Keywords:
;; Version:
;; URL:  http://www.emacswiki.org/cgi-bin/wiki.pl?ErBot
;; For latest version:
;; This file is NOT (yet) part of GNU Emacs.
 
;; This is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
 
;; This is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
 

;;; Real Code:



(defun fs-m8b nil
  (fs-random-choose 
   '("Yes" "No" "Definitely" "Of course not!" "Highly likely." 
     "Ask yourself, d\o you really want to know?" 
     "I'm telling you, you don't want to know." "mu!")))



(defun fsi-C-h (sym &rest thing)
  "
;;; 2003-08-16 T15:19:00-0400 (Saturday)    D. Goel
Coded by bojohann on #emacs."
  (cond
   ((eq sym 'f)
    (apply 'fs-df thing))
   ((eq sym 'k)
    (apply 'fs-dk thing)) 
    ((eq sym 'c)
     (apply 'fs-describe-key-briefly thing))
    ((eq sym 'w)
     (apply 'fs-dw thing))
    ((eq sym 'v)
     (apply 'fs-dv thing))))


(defun fsi-wtf-is (&optional term &rest args)
  (unless term 
    (error "Syntax: wtf TERM"))
  (require 'wtf)
  (funcall 'wtf-is (format "%s" term)))



(defalias 'fsi-wtf 'fsi-wtf-is)


(provide 'erbc6)
(run-hooks 'erbc6-after-load-hook)



;;; erbc6.el ends here
