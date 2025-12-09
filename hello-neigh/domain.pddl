(define (domain hello-world)
  (:requirements :typing :fluents)

  (:types neighbour)

  (:predicates
    (said-hello ?s - neighbour)
  )

  (:functions
    (f)
  )

  (:action hello
    :parameters (?s - neighbour)
    :precondition (>= (f) 0)
    :effect (and
      (said-hello ?s)
      (increase (f) 1)
    )
  )
)