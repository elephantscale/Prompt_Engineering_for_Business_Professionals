#!/usr/bin/env bash
#
# validate-course.sh - repository structure check for
# Prompt Engineering for Business Professionals.

set -u

if [ -t 1 ]; then G=$'\e[32m'; R=$'\e[31m'; B=$'\e[1m'; N=$'\e[0m'; else G=; R=; B=; N=; fi
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FAIL=0

ok() { printf "  ${G}PASS${N}  %s\n" "$1"; }
bad() { printf "  ${R}FAIL${N}  %s\n" "$1"; FAIL=$((FAIL+1)); }

printf "${B}Prompt Engineering for Business Professionals - course repo validation${N}\n"

required=(
  README.md
  outline.md
  index.html
  slides/slide-list.txt
  slides/gen.sh
  labs/SETUP.md
  labs/verify-setup.sh
  labs/test-all-labs.sh
  course-materials/README.md
  course-materials/prompt-template.md
  course-materials/prompt-anatomy-cheatsheet.md
  course-materials/evaluation-rubric.md
  course-materials/brand-voice-worksheet.md
  course-materials/prompt-library-template.md
  course-materials/capstone-rubric.md
)

printf "\n${B}Required files${N}\n"
for f in "${required[@]}"; do
  [ -f "$ROOT_DIR/$f" ] && ok "$f" || bad "$f missing"
done

printf "\n${B}Slides${N}\n"
if [ -f "$ROOT_DIR/slides/slide-list.txt" ]; then
  while IFS= read -r deck; do
    [ -z "$deck" ] && continue
    [ -f "$ROOT_DIR/slides/$deck" ] && ok "slide deck $deck" || bad "slide deck $deck missing"
  done < "$ROOT_DIR/slides/slide-list.txt"
fi

printf "\n${B}Labs${N}\n"
expected_labs=(
  01-How-AI-Works
  02-Anatomy-of-a-Prompt
  03-Business-Scenarios
  04-Advanced-Techniques
  05-Testing-Evaluating
  06-Prompt-Systems-Governance
  07-Capstone
)
for lab in "${expected_labs[@]}"; do
  [ -f "$ROOT_DIR/labs/$lab/README.md" ] && ok "$lab README" || bad "$lab README missing"
done

printf "\n${B}Sample assets${N}\n"
assets=(
  labs/assets/weak-prompts.md
  labs/assets/sample-support-emails.csv
  labs/assets/sample-quarterly-report.md
  labs/assets/sample-meeting-notes.md
  labs/assets/sample-brand-voice.md
  labs/assets/sample-return-policy.md
  labs/assets/prompt-eval-pairs.md
)
for a in "${assets[@]}"; do
  [ -f "$ROOT_DIR/$a" ] && ok "$a" || bad "$a missing"
done

printf "\n${B}Content checks${N}\n"
grep -qi "Prompt Engineering for Business Professionals" "$ROOT_DIR/README.md" && ok "README course title" || bad "README course title missing"
grep -qi "Course Outline" "$ROOT_DIR/outline.md" && ok "outline has course outline" || bad "outline course outline missing"
grep -qi "Capstone" "$ROOT_DIR/labs/07-Capstone/README.md" && ok "capstone lab present" || bad "capstone lab missing"

printf "\n"
if [ "$FAIL" -eq 0 ]; then
  printf "${G}${B}All checks passed.${N}\n"
else
  printf "${R}${B}%d check(s) failed.${N}\n" "$FAIL"
  exit 1
fi
