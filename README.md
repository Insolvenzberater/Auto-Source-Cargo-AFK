Gemini hat gesagt
Here is a professional, clean, and well-structured README.md for your GitHub repository in English.

GTA V Smart AFK & Menu Automation (AutoHotkey v2)
An advanced, intelligent automation script for Grand Theft Auto V built with AutoHotkey v2. This bot combines a precise menu navigation sequence with a randomized anti-AFK system, specifically designed to allow the user to continue working on their PC while the script runs in the background.

🚀 Key Features
Smart Focus Management: The script only captures the window focus when necessary. During long delays (e.g., 20s loading times), it automatically releases control back to the user.

Minimalist Status HUD: A non-intrusive, flicker-free ToolTip (✅/⚠️) notifies you of the current status and upcoming window switches.

Dual-Interval Logic:

Main Sequence: Executes a precise 6-row menu command chain every 50 minutes.

Anti-AFK System: Sends a "Z" pulse every ~14 minutes (with ±30s random variance) to prevent session kicks.

Input Protection: Utilizes BlockInput and ClipCursor during active sequences to prevent accidental mouse or keyboard interference while the bot is navigating menus.

Human-Like Timings: All keystrokes and delays include randomized micro-variations (±20ms) to mimic human input.

🛠 Prerequisites
AutoHotkey v2.0+ must be installed on your system.

Window Mode: GTA V must be set to "Windowed" or "Borderless Windowed". (Exclusive Fullscreen will block background commands).

Administrator Rights: The script must run as Admin to interact with the game window (the script includes an auto-admin prompt).

⌨️ Controls
Hotkey	Action
F1	Start Bot: Initializes the first sequence and starts all background timers.
F2	Emergency Stop: Immediately terminates the script and releases mouse/keyboard lock.
⚙️ How "Smart-Wait" Works
The script features a custom SK() (Smart-Key) function. When a command is followed by a long delay (e.g., 20,000ms):

Action: The key is pressed in GTA V.

Release: The script unlocks your mouse/keyboard and shows a ✅ in the corner. You can now use your PC freely.

Warning: 3 seconds before the next command, the icon changes to ⚠️.

Re-Focus: The script pulls GTA V back to the foreground, freezes the cursor position, and executes the next step.

⚠️ Disclaimer
This script is for educational and automation purposes. Using third-party macros may violate the Terms of Service of the game developer. Use this software at your own risk.
