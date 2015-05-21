(defn fib [a b] (cons a (lazy-seq (fib b (+ b a)))))

(time (take 40 (fib 1 1)))
