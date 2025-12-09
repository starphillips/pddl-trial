package main

import (
	"fmt"
	"pddl/planner"
	"strings"
)

func main() {
	opticPath := "/home/starkie/optic/build/src/optic/optic-clp"
	domainFile := "/mnt/c/Users/starkie.phillips/Documents/pddl-trial/hello-neigh-optic/pddl/domain.pddl"

	problemContent := `(define (problem hello-world-problem)
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
)`

	rawOutput, err := planner.RunOptic(opticPath, domainFile, problemContent)
	if err != nil {
		panic(err)
	}

	// true or false based on raw or parsed
	parsed := false

	if parsed {
		// Slice everything after "Solution Found"
		if idx := strings.Index(rawOutput, "Solution Found"); idx != -1 {
			fmt.Printf("Plan Actions: \n%v", rawOutput[idx:])
		} else {
			fmt.Println("No plan found")
		}
	} else {
		fmt.Printf("Raw Output: \n%v", rawOutput)
	}
}
