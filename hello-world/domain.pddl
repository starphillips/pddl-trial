(define (domain hello-world)
  (:requirements :negative-preconditions :typing)

    (:types
    something
    )

  (:predicates
    (have-breath)
    (said-hello ?s - something)
  )

  (:action breath-in
      :parameters ()
      :precondition (and )
      :effect (and 
        (have-breath))
  )
  

  (:action say-hello
      :parameters (?s - something)
      :precondition (and 
        (have-breath)
        (not (said-hello ?s)))
      :effect (and 
        (said-hello ?s) 
      )
  )
  
)
