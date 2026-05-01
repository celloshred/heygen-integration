# HeyGen Integration

## What this repo is
Avatar identity files and video generation config for HeyGen. Every session
that opens this repo can create or use avatars and generate videos without
any manual setup.

## Skills
Fetch these at the start of any session that needs them:
- **Avatar creation:** https://raw.githubusercontent.com/heygen-com/skills/master/heygen-avatar/SKILL.md
- **Video generation:** https://raw.githubusercontent.com/heygen-com/skills/master/heygen-video/SKILL.md

## Auth
- **MCP (preferred):** `mcp__heygen__*` tools — OAuth, uses HeyGen plan credits.
- **API key fallback:** `HEYGEN_API_KEY` environment variable.
- Transport is auto-detected by the skill — never specify manually.

## Avatar files
`AVATAR-<NAME>.md` files at the repo root are the source of truth.
- `AVATAR-AGENT.md` — symlink to the current agent's avatar
- `AVATAR-USER.md` — symlink to Michael's avatar
- Named files (e.g. `AVATAR-MICHAEL.md`) are canonical; symlinks are pointers
- Never hardcode `look_id` — always resolve fresh from `group_id` at runtime

## Common tasks
**Create or update an avatar:**
> Fetch https://raw.githubusercontent.com/heygen-com/skills/master/heygen-avatar/SKILL.md and follow it to create my avatar.

**Generate a video:**
> Fetch https://raw.githubusercontent.com/heygen-com/skills/master/heygen-video/SKILL.md and make a [duration] video of [subject] saying [topic].

## API
- v3 only. Never call v1 or v2 endpoints.
- Docs index: https://developers.heygen.com/llms.txt

## User
Michael. English.
