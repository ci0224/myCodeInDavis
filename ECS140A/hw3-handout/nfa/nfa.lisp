;; You may define helper functions here

;; length function from lecture slide
(defun length (l)
    (if (null l) 0
        (+ 1 (length (cdr l)))
    )
)

;; return T if "target" is in "array", return nil otherwise.
(defun myfind (array target)
    (cond
        ((= (car array) target)
            T)
        ((null (cdr array))
            nil)
        ((listp (cdr array))
            (myfind (cdr array) target))
    )
)





;; handle transition for both 'list start' and 'number start'
(defun mytransition (transition start input)
    (cond
        ((listp start)
            ;; not sure how to do this
            (apply #'append (mapcar transition start input))
        )
        ((numberp start)
            (transition start input)
        )
    )
)

(defun reachable (transition start final input)
    ;; TODO: Incomplete function
    ;; The next line should not be in your solution.
    (if (= 0 (length input))
        ;; if this is not the end
        (reachable transition (mytransition start (car input)) final (cdr input))
        ;; if this is the end
        (cond
            ((listp start)
                (myfind start final)
            )
            ((numberp start)
                (= start final)
            )
        )
    )
)
