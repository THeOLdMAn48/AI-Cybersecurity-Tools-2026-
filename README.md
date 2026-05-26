# 🛡️ AI Tools in Cybersecurity & Pentesting — 2026 Edition

<div align="center">

![Cybersecurity AI](https://img.shields.io/badge/CyberSecurity-AI%20Powered-red?style=for-the-badge&logo=shield)
![Updated](https://img.shields.io/badge/Updated-May%202026-blue?style=for-the-badge)
![Stars](https://img.shields.io/badge/Contributions-Welcome-green?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)

> **Ek complete guide — Cybersecurity mein use hone wale AI tools ke baare mein.** 
> Installation, setup, aur real-world use cases ke saath.

[🚀 Quick Start](#-quick-start) • [🧰 Tools List](#-all-tools-list) • [📂 Categories](#-categories) • [⚠️ Disclaimer](#%EF%B8%8F-disclaimer)

</div>

---

## 📌 Table of Contents

- [What is This Repo?](#-what-is-this-repo)
- [Categories](#-categories)
- [All Tools List](#-all-tools-list)
- [Tool Details & Installation](#-tool-details--installation)
  - [1. PentestGPT](#1-pentestgpt)
  - [2. Nuclei AI](#2-nuclei-ai)
  - [3. BurpGPT](#3-burpgpt)
  - [4. CAI - Cybersecurity AI](#4-cai---cybersecurity-ai)
  - [5. BBOT](#5-bbot)
  - [6. Zen-AI-Pentest](#6-zen-ai-pentest)
  - [7. Hexstrike](#7-hexstrike)
  - [8. Garak](#8-garak)
  - [9. AutoRecon](#9-autorecon)
  - [10. Escape](#10-escape)
- [Quick Comparison Table](#-quick-comparison-table)
- [Disclaimer](#%EF%B8%8F-disclaimer)
- [Contributing](#-contributing)

---

## 🔍 What is This Repo?

Aaj ke time mein **Cybersecurity rapidly evolve** ho rahi hai. Sirf manual pentesting se kaam nahi chalta — AI-powered tools ne game change kar diya hai.

Ye repo **tumhare liye ek complete guide** hai jisme:
- ✅ Har major AI pentesting tool ka overview
- ✅ Step-by-step installation guide
- ✅ Kab aur kaise use karna hai
- ✅ Real-world use cases
- ✅ Open source vs paid ka comparison

---

## 📂 Categories

| Category | Tools |
|---|---|
| 🧠 **AI Reasoning / LLM-based** | PentestGPT, CAI |
| 🔍 **Vulnerability Scanning** | Nuclei AI, BBOT |
| 🌐 **Web App / API Testing** | BurpGPT, Escape |
| 🤖 **Autonomous Agents** | CAI, Zen-AI-Pentest, Hexstrike |
| 🕵️ **Recon & OSINT** | BBOT, AutoRecon |
| 🧬 **AI/LLM Security Testing** | Garak |
| 🏢 **Enterprise Platforms** | Escape, xBow |

---

## 🧰 All Tools List

| # | Tool | Type | Open Source | Best For |
|---|---|---|---|---|
| 1 | **PentestGPT** | LLM Reasoning | ✅ Free | CTF, Manual Assist |
| 2 | **Nuclei AI** | Scanner | ✅ Free | Web/API Scanning |
| 3 | **BurpGPT** | Web Testing | ✅ Free | HTTP/Web Apps |
| 4 | **CAI** | Autonomous Agent | ✅ Free | Full Pentest |
| 5 | **BBOT** | Recon | ✅ Free | OSINT, Recon |
| 6 | **Zen-AI-Pentest** | Multi-Agent | ✅ Free | Enterprise Scope |
| 7 | **Hexstrike** | MCP/Tool Runner | ✅ Free | Red Teaming |
| 8 | **Garak** | LLM Security | ✅ Free | AI App Testing |
| 9 | **AutoRecon** | Recon | ✅ Free | Initial Recon |
| 10 | **Escape** | API Pentesting | ❌ SaaS | API Security |

---

## 🛠️ Tool Details & Installation

---

### 1. PentestGPT

> 🧠 **LLM-based AI assistant jo tumhare saath milke pentest karta hai**

**Kya karta hai:**
- Vulnerability findings analyze karta hai
- Attack paths suggest karta hai
- CTF aur bug bounty mein guide karta hai
- Commands aur strategies recommend karta hai

**GitHub:** https://github.com/GreyDGL/PentestGPT

**Requirements:**
- Python 3.9+
- OpenAI API Key ya local LLM

**Installation:**
```bash
# Step 1: Clone the repo
git clone https://github.com/GreyDGL/PentestGPT.git
cd PentestGPT

# Step 2: Virtual environment banao
python3 -m venv venv
source venv/bin/activate       # Linux/Mac
# venv\Scripts\activate        # Windows

# Step 3: Dependencies install karo
pip install -r requirements.txt

# Step 4: API key set karo
export OPENAI_API_KEY="your-api-key-here"

# Step 5: Run karo
python3 main.py
```

**Use Case:**
```
Tumne ek web app pe SQL injection dhundhi → PentestGPT se poocho "what next?" 
→ Wo tumhe privilege escalation, lateral movement suggest karega
```

---

### 2. Nuclei AI

> 🔍 **AI-generated templates se blazing fast vulnerability scanning**

**Kya karta hai:**
- 1000+ CVEs ke liye pre-built templates
- AI se custom templates generate karo
- APIs, web apps, cloud infra scan karo
- CI/CD pipeline mein integrate hota hai

**GitHub:** https://github.com/projectdiscovery/nuclei

**Requirements:**
- Go 1.21+

**Installation:**
```bash
# Method 1: Go se install (Recommended)
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

# Method 2: Linux apt
sudo apt install nuclei

# Method 3: Homebrew (Mac)
brew install nuclei

# Templates download karo
nuclei -update-templates

# Basic scan chalao
nuclei -u https://target.com

# AI-generated template use karo
nuclei -u https://target.com -t ai-generated/

# Specific vulnerability type scan
nuclei -u https://target.com -tags sqli,xss,lfi
```

**AI Template Generation:**
```bash
# Nuclei AI (cloud feature)
nuclei -u target.com -ai "Find authentication bypass vulnerabilities"
```

---

### 3. BurpGPT

> 🌐 **Burp Suite ka AI superpower — HTTP traffic ko AI se analyze karo**

**Kya karta hai:**
- Burp Suite ka extension hai
- Captured HTTP requests/responses ko AI se analyze karta hai
- Hidden vulnerabilities dhundta hai
- Custom prompts se specific issues target karo

**GitHub:** https://github.com/aress31/burpgpt

**Requirements:**
- Burp Suite (Community ya Pro)
- Java 17+
- OpenAI API Key

**Installation:**
```bash
# Step 1: JAR file download karo
# Releases se: https://github.com/aress31/burpgpt/releases

# Step 2: Burp Suite open karo
# Extensions → Add → Java → Select downloaded .jar file

# Step 3: API key configure karo
# Extensions → BurpGPT → Settings → Enter OpenAI Key

# Step 4: Use karo
# Koi bhi request pe Right Click → Send to BurpGPT
```

**Proxy Setup:**
```bash
# Browser mein proxy set karo
# Host: 127.0.0.1
# Port: 8080

# Phir BurpGPT automatically traffic analyze karega
```

---

### 4. CAI - Cybersecurity AI

> 🤖 **300+ AI models support karne wala autonomous pentesting framework**

**Kya karta hai:**
- Fully autonomous pentesting karta hai
- Reconnaissance se exploitation tak
- HackTheBox, CTF machines solve karta hai
- Local LLMs ke saath kaam karta hai (air-gapped environments)
- Bug bounty automation

**GitHub:** https://github.com/aliasrobotics/cai

**Requirements:**
- Python 3.10+
- Docker (recommended)

**Installation:**
```bash
# Method 1: pip se
pip install cai-framework

# Method 2: Docker se (Recommended)
git clone https://github.com/aliasrobotics/cai.git
cd cai
docker build -t cai .
docker run -it --rm cai

# Method 3: Source se
git clone https://github.com/aliasrobotics/cai.git
cd cai
pip install -r requirements.txt

# Environment setup
export OPENAI_API_KEY="your-key"
# ya local model ke liye:
export CAI_MODEL="ollama/llama3"

# Start karo
python3 -m cai
```

**HTB Machine Attack Example:**
```bash
# Target set karo
cai target set 10.10.10.100

# Autonomous mode mein run karo
cai run --autonomous

# Specific task ke liye
cai task "Find and exploit SQL injection on login page"
```

---

### 5. BBOT

> 🕵️ **AI-assisted attack surface mapping aur OSINT**

**Kya karta hai:**
- Subdomains, IPs, open ports discover karta hai
- 100+ modules ke saath modular design
- AI se findings prioritize karta hai
- PentestGPT ke saath integrate hota hai

**GitHub:** https://github.com/blacklanternsecurity/bbot

**Requirements:**
- Python 3.9+

**Installation:**
```bash
# pip se install
pip install bbot

# ya pipx se (recommended)
pipx install bbot

# Basic scan
bbot -t target.com -p subdomain-enum

# Full recon scan
bbot -t target.com -p full

# Output save karo
bbot -t target.com -p subdomain-enum -o output/

# Specific modules use karo
bbot -t target.com -m nmap,ffuf,nuclei
```

**Workflow:**
```bash
# 1. Pehle BBOT se attack surface map karo
bbot -t company.com -p full -o recon-output/

# 2. Output PentestGPT ko do
# "BBOT found these subdomains and open ports, what should I test next?"

# 3. Nuclei se found targets scan karo
nuclei -l recon-output/subdomains.txt
```

---

### 6. Zen-AI-Pentest

> 🏗️ **Multi-agent framework — 72+ tools, 9 categories, 4 specialized agents**

**Kya karta hai:**
- 4 specialized agents: Recon, Vulnerability, Exploit, Report
- Network, Web, AD, OSINT, Cloud sab cover karta hai
- CVSS/EPSS scoring automatically karta hai
- FastAPI backend + WebSocket real-time updates
- GitHub Action ke roop mein bhi use hota hai

**GitHub:** https://github.com/NightCrawler-404/Zen-AI-Pentest

**Requirements:**
- Python 3.11+
- Docker Compose

**Installation:**
```bash
# Repo clone karo
git clone https://github.com/NightCrawler-404/Zen-AI-Pentest.git
cd Zen-AI-Pentest

# Environment file banao
cp .env.example .env
nano .env
# OPENAI_API_KEY=your-key
# TARGET=192.168.1.0/24

# Docker se run karo
docker compose up -d

# Web UI open karo
# http://localhost:3000

# Ya direct Python se
pip install -r requirements.txt
python3 main.py --target 192.168.1.100
```

**Agent Workflow:**
```
Recon Agent → Attack Surface Map karta hai
    ↓
Vulnerability Agent → Vulnerabilities dhundta hai
    ↓
Exploit Agent → Exploitation attempt karta hai
    ↓
Report Agent → Professional report generate karta hai
```

---

### 7. Hexstrike

> ⚡ **Claude/GPT ko 150+ cybersecurity tools chalane do directly**

**Kya karta hai:**
- MCP (Model Context Protocol) server hai
- Claude, GPT, Copilot ko security tools directly use karane deta hai
- Kali Linux ka poora toolkit AI se accessible
- Vulnerability discovery automate karta hai

**GitHub:** https://github.com/mosama2050/hexstrike

**Requirements:**
- Python 3.10+
- Claude ya OpenAI access
- Kali Linux tools installed

**Installation:**
```bash
# Clone karo
git clone https://github.com/mosama2050/hexstrike.git
cd hexstrike

# Install karo
pip install -r requirements.txt

# MCP server start karo
python3 server.py

# Claude Desktop mein configure karo
# claude_desktop_config.json mein add karo:
{
  "mcpServers": {
    "hexstrike": {
      "command": "python3",
      "args": ["/path/to/hexstrike/server.py"]
    }
  }
}
```

**Usage Example:**
```
Claude ko bolo: "Run nmap scan on 192.168.1.1 and then check for CVEs"
→ Hexstrike automatically nmap chalayega + results analyze karega
```

---

### 8. Garak

> 🧬 **AI/LLM applications ko pentest karo — Prompt Injection, Jailbreaking test karo**

**Kya karta hai:**
- LLM-based apps ki security test karta hai
- Prompt injection vulnerabilities dhundta hai
- Jailbreaking attempts test karta hai
- Custom probes likh sakte ho

**GitHub:** https://github.com/leondz/garak

**Requirements:**
- Python 3.10+

**Installation:**
```bash
# pip se install
pip install garak

# Basic LLM scan
python3 -m garak --model_type openai --model_name gpt-4 --probes all

# Specific attack test karo
python3 -m garak --model_type openai --model_name gpt-3.5-turbo --probes prompt_injection

# Local model test karo
python3 -m garak --model_type huggingface --model_name llama2 --probes jailbreak

# Custom target (API endpoint)
python3 -m garak --model_type rest --model_name "https://your-ai-app.com/api" --probes all

# Report generate karo
python3 -m garak ... --report_prefix my_scan
```

**Available Probe Categories:**
```
prompt_injection    → Prompt injection attacks
jailbreak          → Jailbreaking attempts  
data_leakage       → Training data extraction
hallucination      → False information generation
toxicity           → Toxic content generation
```

---

### 9. AutoRecon

> 🔭 **Automated multi-threaded network reconnaissance**

**Kya karta hai:**
- Nmap, Gobuster, Nikto sab automatically chalata hai
- Results organize karke save karta hai
- AI tools ke liye perfect input generate karta hai
- CTF aur real pentests dono ke liye

**GitHub:** https://github.com/Tib3rius/AutoRecon

**Requirements:**
- Python 3.8+
- Nmap, Gobuster, Nikto etc.

**Installation:**
```bash
# Dependencies install karo
sudo apt install nmap gobuster nikto curl seclists

# AutoRecon install karo
pip3 install git+https://github.com/Tib3rius/AutoRecon.git

# ya pipx se
pipx install git+https://github.com/Tib3rius/AutoRecon.git

# Single target scan
autorecon 192.168.1.100

# Multiple targets
autorecon 192.168.1.100 192.168.1.101 192.168.1.102

# Network range
autorecon 192.168.1.0/24

# Results dekho
ls results/192.168.1.100/
```

---

### 10. Escape (SaaS)

> 🏢 **Enterprise-grade AI API Security Testing Platform**

**Kya karta hai:**
- APIs continuously pentest karta hai
- Business logic flaws dhundta hai
- CI/CD mein integrate hota hai
- Proof-of-exploitability deta hai

**Website:** https://escape.tech

**Setup:**
```bash
# Account banao: https://escape.tech

# CLI install karo
npm install -g @escape.tech/cli

# Login karo
escape login

# API scan karo
escape scan --api https://api.yoursite.com/graphql

# CI/CD mein (GitHub Actions)
# .github/workflows/security.yml
```

```yaml
name: Security Scan
on: [push]
jobs:
  escape-scan:
    runs-on: ubuntu-latest
    steps:
      - uses: Escape-Technologies/action@main
        with:
          application_id: ${{ secrets.ESCAPE_APP_ID }}
          api_token: ${{ secrets.ESCAPE_TOKEN }}
```

---

## 📊 Quick Comparison Table

| Tool | Difficulty | Cost | Speed | Coverage |
|---|---|---|---|---|
| PentestGPT | 🟡 Medium | Free* | ⭐⭐⭐ | LLM Assist |
| Nuclei AI | 🟢 Easy | Free | ⭐⭐⭐⭐⭐ | Web/API |
| BurpGPT | 🟡 Medium | Free* | ⭐⭐⭐ | Web Apps |
| CAI | 🔴 Advanced | Free | ⭐⭐⭐⭐ | Full Scope |
| BBOT | 🟢 Easy | Free | ⭐⭐⭐⭐ | Recon/OSINT |
| Zen-AI | 🔴 Advanced | Free | ⭐⭐⭐⭐ | Enterprise |
| Hexstrike | 🔴 Advanced | Free* | ⭐⭐⭐⭐ | Red Teaming |
| Garak | 🟡 Medium | Free | ⭐⭐⭐ | AI/LLM Apps |
| AutoRecon | 🟢 Easy | Free | ⭐⭐⭐⭐ | Network |
| Escape | 🟢 Easy | Paid | ⭐⭐⭐⭐⭐ | API Security |

> *API key cost laga sakti hai (OpenAI etc.)

---

## 🔄 Recommended Workflow

```
Phase 1 — RECON
    AutoRecon + BBOT
         ↓
Phase 2 — AI ANALYSIS  
    PentestGPT (findings analyze karo)
         ↓
Phase 3 — SCANNING
    Nuclei AI + BurpGPT
         ↓
Phase 4 — EXPLOITATION
    CAI / Zen-AI-Pentest
         ↓
Phase 5 — REPORTING
    Zen-AI Report Agent
```

---

## 🚀 Quick Start

Naya hoon pentesting mein? Yahan se shuru karo:

```bash
# Step 1: BBOT install karo (recon ke liye)
pip install bbot

# Step 2: Nuclei install karo (scanning ke liye)
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
nuclei -update-templates

# Step 3: PentestGPT install karo (AI assist ke liye)
git clone https://github.com/GreyDGL/PentestGPT.git
cd PentestGPT && pip install -r requirements.txt

# Ab scan karo (apna authorized target)
bbot -t authorized-target.com -p subdomain-enum
nuclei -u authorized-target.com
```

---

## 📚 Learning Resources

- 🎓 [TryHackMe](https://tryhackme.com) — Beginner friendly labs
- 🎯 [HackTheBox](https://hackthebox.com) — Advanced machines
- 📖 [OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)
- 🤖 [AI Security Course - Redfox Academy](https://academy.redfoxsec.com)
- 🔐 [PortSwigger Web Security Academy](https://portswigger.net/web-security) — Free!

---

## 🤝 Contributing

Is repo ko aur better banana chahte ho?

1. Fork karo
2. Ek naya branch banao (`git checkout -b feature/new-tool`)
3. Changes karo
4. PR submit karo

**Kya add kar sakte ho:**
- Naaya AI security tool
- Better installation guide
- Real-world use case
- Video tutorial link

---

## ⚠️ Disclaimer

```
YE TOOLS SIRF EDUCATIONAL PURPOSE KE LIYE HAIN.

✅ Authorized systems pe testing karo
✅ Bug bounty programs join karo
✅ CTF platforms use karo (HackTheBox, TryHackMe)
✅ Apne khud ke lab setup karo

❌ Kisi ke bhi system pe bina permission ke test mat karo
❌ Illegal activities ke liye use mat karo

Unauthorized access ILLEGAL hai aur serious consequences hain.
Is repo ke author koi bhi illegal activity ke liye responsible nahi hai.
```

---

## ⭐ Star This Repo!

Agar ye repo helpful laga, toh **Star** zaroor karo! 🌟  
Dusron ke saath share karo aur community ko grow karne mein help karo.

---

<div align="center">
Made with ❤️ for the Cybersecurity Community | Updated May 2026
</div>
