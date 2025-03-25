#!/usr/bin/env zsh

RED="\e[1;31m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
CYAN="\e[1;36m"
YELLOW="\e[1;33m"
MAGENTA="\e[1;35m"
WHITE="\e[1;37m"
RESET="\e[0m"

lines=(
    "${RED}    ##############${WHITE}+-++++${RED}########################"
    "${RED}    ###########${WHITE}---.--+-.${RED} ...####################"
    "${RED}    ##########${WHITE}-.-----...${RED}    .-##################    ${CYAN}piotr@kusinski.dev${RESET}"
    "${RED}    #########${WHITE}-...-..-----+++${RED} ..#################    ${WHITE}-------------------------------${RESET}"
    "${RED}    #########${WHITE}..-.-------####+.${RED} -################    ${GREEN}OS:${RESET} Arch btw"
    "${RED}    #########${WHITE}. ---+++#######+.${RED} -################    ${GREEN}Host:${RESET} Kubernetes Cluster"
    "${RED}    #########${WHITE} -+  .###+. -+##-${RED} .################    ${GREEN}Kernel:${RESET} Hardened (until I forget an update)"
    "${RED}    #########${WHITE} -+-.. +#-..-+##+${RED} -################    ${GREEN}Uptime:${RESET} Since 1997"
    "${RED}    #########${WHITE} ++--+-###+++###+${RED} +################    ${GREEN}Packages:${RESET} ∞ (pods)"
    "${RED}    ########+${WHITE}.++##++#########++${RED}#-###############    ${GREEN}Shell:${RESET} bash/zsh"
    "${RED}    #########${WHITE}.-+++- .+#########${RED}#################    ${GREEN}SLA:${RESET} 99.99999% (occasional naps)"
    "${RED}    #########+${WHITE}-+++-.--#######++${RED}#################    ${GREEN}Status:${RESET} Permanently online"
    "${RED}    ##########${WHITE}+--+++++######+${RED}     +#############    ${GREEN}On-Call Status:${RESET} PagerDuty PTSD enabled"
    "${RED}    ###########${WHITE}+++########+-#${RED}        .##########    ${GREEN}Logs:${RESET} Filtered 10 million lines, still no clue"
    "${RED}    #########${WHITE} .  +....-.. -##${RED}         ##########    ${GREEN}Monitoring:${RESET} Prometheus, Grafana & occasional panic"
    "${RED}    #######+${WHITE} .   ++-   -+####-${RED}        +#########    ${GREEN}Coffee:${RESET} Black, no sugar"
    "${RED}    #######++${WHITE}     +++++#####.${RED}          #########    ${GREEN}CPU:${RESET} Multi-threaded, but bottlenecked by meetings"
    "${RED}    #######++${WHITE}     ---+###${RED}               ########    ${GREEN}Memory:${RESET} ∞ (with occasional leaks)"
    "${RED}    #######+${WHITE}       -++.${RED}                   ###### "
    "${RED}    ###+-${RED}                                    ### "
)

for line in "${lines[@]}"; do
    echo -e "$line"
    sleep $(LC_NUMERIC=C awk -v min=0.001 -v max=0.3 'BEGIN{srand(); print min+rand()*(max-min)}')
done

echo -e "${RESET}"