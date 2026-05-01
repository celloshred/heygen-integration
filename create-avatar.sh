#!/usr/bin/env bash
# Run this from your LOCAL machine (Windows WSL or Mac terminal) after:
#   curl -fsSL https://static.heygen.ai/cli/install.sh | bash
#   heygen auth login   # enter your API key when prompted

set -e

AVATAR_NAME="Michael"
APPEARANCE_PROMPT="A professional male mortgage broker in his early middle age with a warm, approachable expression and short professional hair. Business casual attire. Realistic style, half body, landscape orientation. Friendly and trustworthy demeanor, the kind of person you'd trust with the biggest financial decision of your life."
VOICE_PROMPT="A warm, confident, reassuring American English male voice. Calm but engaging — never salesy. Like a trusted financial advisor who genuinely cares about his clients."

echo "Step 1: Creating avatar from prompt..."
CREATE_RESULT=$(heygen avatar create -d "{
  \"type\": \"prompt\",
  \"name\": \"${AVATAR_NAME}\",
  \"prompt\": \"${APPEARANCE_PROMPT}\"
}")
echo "$CREATE_RESULT"
GROUP_ID=$(echo "$CREATE_RESULT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d['data']['avatar_item']['group_id'])")
LOOK_ID=$(echo "$CREATE_RESULT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d['data']['avatar_item']['id'])")
echo "Group ID: $GROUP_ID"
echo "Look ID:  $LOOK_ID"

echo ""
echo "Step 2: Designing voice..."
VOICE_RESULT=$(heygen voice create --prompt "$VOICE_PROMPT" --seed 0)
echo "$VOICE_RESULT"

echo ""
echo "=========================="
echo "Copy the Group ID and Voice ID above into AVATAR-MICHAEL.md"
echo "Group ID: $GROUP_ID"
echo "Look ID:  $LOOK_ID"
