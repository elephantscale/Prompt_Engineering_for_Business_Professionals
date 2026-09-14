#!/usr/bin/env bash
#
# test-all-labs.sh - sanity-check that every lab guide and its referenced sample
# files exist and link correctly. These are browser labs, so there is nothing to
# "run" - this validates the written materials are complete and internally consistent.

set -u

if [ -t 1 ]; then G=$'\e[32m'; R=$'\e[31m'; B=$'\e[1m'; N=$'\e[0m'; else G=; R=; B=; N=; fi
LABS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FAIL=0

ok()  { printf "  ${G}PASS${N}  %s\n" "$1"; }
bad() { printf "  ${R}FAIL${N}  %s\n" "$1"; FAIL=$((FAIL+1)); }

printf "${B}Lab materials check${N}\n\n"

labs=(
  01-How-AI-Works
  02-Anatomy-of-a-Prompt
  03-Business-Scenarios
  04-Advanced-Techniques
  05-Testing-Evaluating
  06-Prompt-Systems-Governance
  07-Capstone
)

for lab in "${labs[@]}"; do
  readme="$LABS_DIR/$lab/README.md"
  if [ ! -f "$readme" ]; then bad "$lab/README.md missing"; continue; fi
  ok "$lab/README.md"
  # Each lab guide should contain the standard sections.
  for section in "## Goal" "## Steps" "## Deliverable" "## Teacher's Playbook"; do
    grep -qF "$section" "$readme" && ok "  $lab has '$section'" || bad "  $lab missing '$section'"
  done
done

printf "\n${B}Referenced assets exist${N}\n"
# Collect asset filenames referenced from lab READMEs and confirm each file is present.
refs=$(grep -rhoE 'assets/[A-Za-z0-9._-]+' "$LABS_DIR"/*/README.md 2>/dev/null | sort -u)
for ref in $refs; do
  if [ -f "$LABS_DIR/$ref" ]; then ok "$ref"; else bad "$ref referenced but missing"; fi
done

printf "\n"
if [ "$FAIL" -eq 0 ]; then
  printf "${G}${B}All lab materials present.${N}\n"
else
  printf "${R}${B}%d problem(s) found.${N}\n" "$FAIL"
  exit 1
fi
