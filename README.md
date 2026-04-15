# Rank Bot

Automatically ranks Roblox users in your group when a checkmark reaction is added to a Discord message containing their username.

---

## Quick Start (Windows)

### Step 1 — Install Node.js
Download and install from **https://nodejs.org/** (choose the LTS version).

### Step 2 — Install the bot
Double-click **`install.bat`** — this installs all required packages.

### Step 3 — Set up your config
1. Find the file called **`.env.example`** in this folder
2. Rename it to **`.env`** (remove the `.example` part)
3. Open `.env` in Notepad and fill in your values:

```
DISCORD_BOT_TOKEN=    ← Your bot token from discord.com/developers
ROBLOX_COOKIE=        ← Your .ROBLOSECURITY cookie from Roblox
ROBLOX_GROUP_ID=      ← The numeric ID of your Roblox group
ROBLOX_TARGET_RANK_NAME=Cadet Phase III   ← Rank to promote users to
DISCORD_WATCH_CHANNEL_ID=   ← (Optional) A channel ID to watch on startup
PORT=3000
```

### Step 4 — Run the bot
Double-click **`start.bat`** — the bot will start and stay running.
Keep the window open while you want the bot to run. Close it to stop.

---

## Bot Commands

Send these to the bot in a **Discord DM**:

| Command | What it does |
|---|---|
| `!commands` | Shows this command list |
| `!addchannel` | Type this *in a server channel* to start watching it for rank reactions |
| `!removechannel <id>` | Stop watching a channel (send the channel ID in DM) |
| `!listchannels` | Show all channels being watched |
| `!banall CONFIRM` | Exile ALL members from the Roblox group |
| `!serverbanall CONFIRM` | Ban ALL members from the Discord server |

---

## How ranking works

1. Add a channel with `!addchannel` (type it in the server channel itself)
2. When a message in that channel contains `Roblox username: SomeUsername`
3. React to it with ✅, ☑️, or ✔️
4. The bot automatically ranks that Roblox user to your configured rank

Watched channels are saved in `watched-channels.json` and remembered between restarts.

---

## Troubleshooting

**The window closes immediately** — open Command Prompt, navigate to this folder with `cd`, and run `start.bat` from there to see the error message.

**"Node.js is not installed"** — download from https://nodejs.org/ and restart your computer after installing.

**Bot says missing environment variables** — make sure your `.env` file exists and has the correct values filled in (no spaces around the `=` sign).
