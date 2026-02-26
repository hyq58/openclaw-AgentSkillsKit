#!/bin/bash
# A simple linter to check if a SKILL.md follows the basic structural rules.

FILE=$1

if [ -z "$FILE" ]; then
    echo "Usage: $0 <path-to-SKILL.md>"
    exit 1
fi

echo "🔍 Auditing $FILE..."

# Check for required sections
REQUIRED_SECTIONS=("Purpose" "Permitted Tools" "Negative Constraints" "Execution Protocol")

for section in "${REQUIRED_SECTIONS[@]}"; do
    if grep -iq "$section" "$FILE"; then
        echo "✅ Found section: $section"
    else
        echo "❌ Missing section: $section"
        exit 1
    fi
done

echo "🎉 Audit Passed! The skill file meets the minimum structural requirements."
exit 0
