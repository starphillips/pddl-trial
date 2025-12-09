(define (domain hello-3-world)
  (:requirements :negative-preconditions :strips :fluents)

  (:functions
    (counter)
  )

  (:action say-hello
      :parameters ()
      :precondition (and )
      :effect (and 
        (increase (counter) 1)
      )
  )
  
)