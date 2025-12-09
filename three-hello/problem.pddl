(define (problem hello-three-times)
  (:domain hello-3-world)

  (:init
    (= (counter) 0)
  )

  (:goal (and
    (= (counter) 3)
  ))

)