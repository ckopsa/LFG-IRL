(defvar *db* nil)

(defun create-game (host location time date title players)
  (list
   :host host
   :location location
   :time time
   :date date
   :title title
   :players players))

(defun add-player-to-game (player game)
  (create-game
   (getf game :host)
   (getf game :location)
   (getf game :time)
   (getf game :date)
   (getf game :title)
   (push player (getf game :players))))

(defun add-game-to-db (game)
  (push game *db*))

(defun create-player (name)
  (list :name name))

(defun dump-db ()
  (dolist (game *db*)
    (format t "~{~a:~10t~a~%~}~%" game)))
