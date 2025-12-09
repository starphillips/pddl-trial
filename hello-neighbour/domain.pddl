(define (domain hello-world)
  (:requirements :negative-preconditions :typing)

    (:types
    neighbour
   )

  (:predicates
    (said-hello ?s - neighbour)
    (p)
  )


  (:action hello
      :parameters (?s - neighbour)
      :precondition (and 
        (not (said-hello ?s))
        (not (p))) ; Ensure its only applicable where it make sense
      :effect (and 
        (said-hello ?s) 
        (not (p))
      )
  )
  
)

; p is a predicate meaning it is true or false
; So the precondition means that if we have not said hello and not p then say hello
; Then the effect says oh we say hello and then if p is already false, nothing changes
; If p is true, then this effect sets it to false
