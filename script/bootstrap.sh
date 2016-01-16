#!/bin/sh

CYAN='\033[1;36m'
PURPLE='\033[1;35m'
BLUE='\033[1;34m'
YELLOW='\033][1;33m'
GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m'

printf "${CYAN}Installing dependencies${NC}\n"
npm install && printf "${GREEN}Dependency installation successful!${NC}\n"
printf "${CYAN}Installing test suite${NC}\n"
git clone https://github.com/codacy/codacy-plugins-test.git && printf "${GREEN}Test suite installation successful!${NC}\n"
printf "${CYAN}Building project${NC}\n"
grunt
