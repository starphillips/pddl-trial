(define (problem hello-world-problem)
  (:domain hello-world)

  (:objects
    star n2 n3 n4 n5 - neighbour
  )

  (:init
    (= (f) 0)
  )

  (:goal (and
    (said-hello star)
    (said-hello n2)
    (said-hello n3)
    (said-hello n4)
    (said-hello n5)
  ))
)