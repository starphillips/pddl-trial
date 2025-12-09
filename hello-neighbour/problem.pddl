(define (problem hello-world)
  (:domain hello-world)

  (:objects
    star jonas - neighbour
  )

  (:init
    
  )

  (:goal (and
    (said-hello jonas)
    (said-hello star)
  ))

)