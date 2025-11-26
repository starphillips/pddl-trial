(define (problem simple-move-problem)
  (:domain simple-move)

  (:objects
    agent1
    locA locB locC
  )

  (:init
    (at agent1 locA)
    (connected locA locB)
    (connected locB locC)
  )

  (:goal
    (at agent1 locC)
  )
)