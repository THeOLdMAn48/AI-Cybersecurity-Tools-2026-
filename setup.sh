#!/bin/bash
# ============================================================
# AI Cybersecurity Tools - Quick Setup Script
# Run: chmod +x setup.sh && ./setup.sh
# ============================================================

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}"
echo "╔══════════════════════════════════════════╗"
echo "║   AI CyberSecurity Tools Setup Script   ║"
echo "║            by AI-CyberSec Repo          ║"
echo "╚══════════════════════════════════════════╝"
echo -e "${NC}"

# Check OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo -e "${GREEN}✅ Linux detected${NC}"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "${GREEN}✅ macOS detected${NC}"
else
    echo -e "${RED}❌ Windows detected — please use WSL2${NC}"
    exit 1
fi

echo ""
echo -e "${YELLOW}Konsa tool install karna chahte ho?${NC}"
echo "1) BBOT (Recon)"
echo "2) Nuclei AI (Scanner)"
echo "3) AutoRecon (Network Recon)"
echo "4) Garak (LLM Security)"
echo "5) PentestGPT"
echo "6) Sab tools install karo"
echo "0) Exit"
echo ""
read -p "Choice enter karo: " choice

install_bbot() {
    echo -e "\n${CYAN}📦 BBOT install ho raha hai...${NC}"
    pip install bbot && echo -e "${GREEN}✅ BBOT installed!${NC}" || echo -e "${RED}❌ BBOT install failed${NC}"
    echo -e "Usage: ${YELLOW}bbot -t target.com -p subdomain-enum${NC}"
}

install_nuclei() {
    echo -e "\n${CYAN}📦 Nuclei install ho raha hai...${NC}"
    if command -v go &> /dev/null; then
        go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
        nuclei -update-templates
        echo -e "${GREEN}✅ Nuclei installed!${NC}"
    else
        echo -e "${RED}❌ Go install nahi hai. Install karo: https://go.dev/dl/${NC}"
    fi
    echo -e "Usage: ${YELLOW}nuclei -u https://target.com${NC}"
}

install_autorecon() {
    echo -e "\n${CYAN}📦 AutoRecon install ho raha hai...${NC}"
    sudo apt-get install -y nmap gobuster nikto curl 2>/dev/null
    pip install git+https://github.com/Tib3rius/AutoRecon.git
    echo -e "${GREEN}✅ AutoRecon installed!${NC}"
    echo -e "Usage: ${YELLOW}autorecon 192.168.1.100${NC}"
}

install_garak() {
    echo -e "\n${CYAN}📦 Garak install ho raha hai...${NC}"
    pip install garak && echo -e "${GREEN}✅ Garak installed!${NC}" || echo -e "${RED}❌ Garak install failed${NC}"
    echo -e "Usage: ${YELLOW}python3 -m garak --model_type openai --model_name gpt-4 --probes all${NC}"
}

install_pentestgpt() {
    echo -e "\n${CYAN}📦 PentestGPT install ho raha hai...${NC}"
    git clone https://github.com/GreyDGL/PentestGPT.git
    cd PentestGPT
    pip install -r requirements.txt
    echo -e "${GREEN}✅ PentestGPT installed!${NC}"
    echo -e "${YELLOW}⚠️  OPENAI_API_KEY environment variable set karna mat bhoolo!${NC}"
    echo -e "Usage: ${YELLOW}cd PentestGPT && python3 main.py${NC}"
    cd ..
}

case $choice in
    1) install_bbot ;;
    2) install_nuclei ;;
    3) install_autorecon ;;
    4) install_garak ;;
    5) install_pentestgpt ;;
    6)
        echo -e "\n${CYAN}🚀 Sab tools install ho rahe hain...${NC}"
        install_bbot
        install_nuclei
        install_autorecon
        install_garak
        install_pentestgpt
        echo -e "\n${GREEN}✅ Sab tools install ho gaye!${NC}"
        ;;
    0) echo "Bye! 👋"; exit 0 ;;
    *) echo -e "${RED}Invalid choice${NC}" ;;
esac

echo ""
echo -e "${YELLOW}⚠️  DISCLAIMER: Sirf authorized systems pe use karo!${NC}"
echo -e "${CYAN}📖 Full guide: README.md padho${NC}"
