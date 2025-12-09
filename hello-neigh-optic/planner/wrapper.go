package planner

import (
	"bytes"
	"fmt"
	"os"
	"os/exec"
)

// RunOptic runs the OPTIC planner with a domain and a dynamically generated problem
func RunOptic(opticPath, domainFile string, problemContent string) (string, error) {

	err := os.MkdirAll("/mnt/c/Users/starkie.phillips/Documents/pddl-trial/hello-neigh-optic/generated", 0755)
	if err != nil {
		return "", fmt.Errorf("failed to create folder: %v", err)
	}

	problemFile := "/mnt/c/Users/starkie.phillips/Documents/pddl-trial/hello-neigh-optic/generated/problem.pddl"

	err = os.WriteFile(problemFile, []byte(problemContent), 0644)
	if err != nil {
		return "", fmt.Errorf("failed to write problem file: %v", err)
	}

	cmd := exec.Command(opticPath, domainFile, problemFile)
	var stdout, stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr

	err = cmd.Run()
	if err != nil {
		return "", fmt.Errorf("OPTIC execution error: %v\nstderr: %s", err, stderr.String())
	}

	// Raw output
	outStr := stdout.String()

	return outStr, nil

}
