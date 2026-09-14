#!/usr/bin/env bash
#
# verify-setup.sh - participant machine check for
# Prompt Engineering for Business Professionals.
#
# The labs are browser-based. This checks the basics only; it does NOT sign in to
# any AI tool or validate paid-account access.

set -u

if [ -t 1 ]; then G=$'\e[32m'; R=$'\e[31m'; Y=$'\e[33m'; B=$'\e[1m'; N=$'\e[0m'; else G=; R=; Y=; B=; N=; fi
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ok()   { printf "  ${G}OK${N}    %s\n" "$1"; }
warn() { printf "  ${Y}WARN${N}  %s\n" "$1"; }

printf "${B}Prompt Engineering for Business Professionals - participant setup check${N}\n\n"

printf "${B}Browser${N}\n"
FOUND_BROWSER=0
for b in google-chrome google-chrome-stable chromium chromium-browser microsoft-edge firefox; do
  if command -v "$b" >/dev/null 2>&1; then ok "found browser: $b"; FOUND_BROWSER=1; fi
done
[ "$FOUND_BROWSER" -eq 0 ] && warn "no browser found on PATH (fine if you open one manually)"

printf "\n${B}Network${N}\n"
if command -v curl >/dev/null 2>&1; then
  for host in claude.ai chatgpt.com gemini.google.com; do
    if curl -s -m 6 -o /dev/null -w "%{http_code}" "https://$host" | grep -qE "^[23]"; then
      ok "reachable: $host"
    else
      warn "could not reach $host (check network / proxy / firewall)"
    fi
  done
else
  warn "curl not available; skipping reachability checks"
fi

printf "\n${B}Course files${N}\n"
for f in outline.md labs/SETUP.md course-materials/prompt-template.md labs/assets/sample-support-emails.csv; do
  [ -f "$ROOT_DIR/$f" ] && ok "present: $f" || warn "missing: $f (are you in the course repo?)"
done

printf "\n${B}Reminder${N}\n"
printf "  You also need a hands-on account for one AI assistant (Claude, ChatGPT, or\n"
printf "  Gemini). This script cannot verify account access - confirm you can sign in\n"
printf "  and that file upload is enabled on your plan. See labs/SETUP.md.\n\n"
