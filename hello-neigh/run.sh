#!/bin/bash

WORKDIR="/$(pwd)"

docker run -it --rm \
  -v "$WORKDIR":/workspace \
  pddl-planner \
  bash -c "cd /fast-downward && ./fast-downward.py /workspace/domain.pddl /workspace/problem.pddl --search \"astar(lmcut())\""
