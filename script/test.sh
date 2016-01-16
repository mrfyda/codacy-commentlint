#!/bin/sh

CYAN='\033[1;36m'
PURPLE='\033[1;35m'
BLUE='\033[1;34m'
YELLOW='\033][1;33m'
GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m'

printf "${CYAN}Building project${NC}\n"
grunt
printf "${CYAN}Building docker image${NC}\n"
docker rmi codacy-commentlint
docker build -t codacy-commentlint . && printf "${GREEN}Build successful!${NC}\n"
printf "${CYAN}Running plugin tests${NC}\n"
cd codacy-plugins-test && (sbt "run-main codacy.plugins.DockerTest all codacy-commentlint:latest" || cd ..)
