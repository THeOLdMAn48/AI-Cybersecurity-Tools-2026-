# 🗂️ AI Cybersecurity Tools — Quick Cheatsheet

## ⚡ One-Line Commands

```bash
# BBOT — Recon
bbot -t target.com -p subdomain-enum

# Nuclei — Scan
nuclei -u https://target.com -tags critical,high

# Nuclei — Full Scan
nuclei -l targets.txt -t nuclei-templates/

# AutoRecon
autorecon 192.168.1.100

# Garak — LLM Pentest
python3 -m garak --model_type openai --model_name gpt-4 --probes prompt_injection

# CAI — Autonomous
python3 -m cai --target 10.10.10.100 --autonomous
```

## 🔗 GitHub Links

| Tool | Link |
|---|---|
| PentestGPT | https://github.com/GreyDGL/PentestGPT |
| Nuclei | https://github.com/projectdiscovery/nuclei |
| BurpGPT | https://github.com/aress31/burpgpt |
| CAI | https://github.com/aliasrobotics/cai |
| BBOT | https://github.com/blacklanternsecurity/bbot |
| Garak | https://github.com/leondz/garak |
| AutoRecon | https://github.com/Tib3rius/AutoRecon |
| Escape | https://escape.tech |

## 📋 Phase-wise Tool Selection

| Phase | Tool | Command |
|---|---|---|
| Recon | BBOT | `bbot -t target.com -p full` |
| Port Scan | AutoRecon | `autorecon target.com` |
| Vuln Scan | Nuclei | `nuclei -u target.com` |
| Web Test | BurpGPT | (Burp Suite extension) |
| AI Assist | PentestGPT | `python3 main.py` |
| Autonomous | CAI | `python3 -m cai` |
| LLM Test | Garak | `python3 -m garak ...` |
