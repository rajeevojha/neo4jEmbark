#!/bin/bash
# Run Neo4j in a Docker container with default ports and a volume for data persistence

docker run -d \
  --name neo4j-local \
  -p 7474:7474 -p 7687:7687 \
  -e NEO4J_AUTH=neo4j/test123 \
  -v $HOME/neo4j/data:/data \
  neo4j:5.19

