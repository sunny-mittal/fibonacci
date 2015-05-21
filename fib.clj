(defn fib
  ([n]
    (fib [1 1] n))
  ([x, n]
    (if (< (count x) n)
      (fib (conj x (+ (last x) (nth x (- (count x) 2)))) n)
      x)))

; alternative way using lazy-seq
; (defn fib [a b] (cons a (lazy-seq (fib b (+ b a)))))

(time (fib 40))
