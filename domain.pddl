(define (domain simple-move)
  (:requirements :strips)

  (:predicates
    (at ?agent ?loc)
    (connected ?from ?to)
  )

  (:action move
    :parameters (?a ?from ?to)
    :precondition (and
        (at ?a ?from)
        (connected ?from ?to)
    )
    :effect (and
        (not (at ?a ?from))
        (at ?a ?to)
    )
  )
)
