# GTA V Smart AFK & Menu Automation (AutoHotkey v2)

# 🚨 IMPORTANT: GTA+ SUBSCRIPTION REQUIRED 🚨
**This script is specifically designed to navigate menus that are ONLY accessible with an active GTA+ membership. It will NOT function correctly without it.**

---

![GTA V](https://img.shields.io/badge/Game-GTA_V-green)
![AHK Version](https://img.shields.io/badge/Language-AutoHotkey_v2-blue)
![Subscription](https://img.shields.io/badge/GTA+_Subscription-REQUIRED-gold)
![Status](https://img.shields.io/badge/Status-Stable-brightgreen)

An advanced, intelligent automation script for Grand Theft Auto V. This bot streamlines specific menu navigation for **GTA+ members** while allowing for seamless multi-tasking on the same PC.

## 🚀 Key Features

* **Smart Focus Management:** The script only captures window focus when necessary. During long delays (e.g., 20s loading times), it releases control so you can use your PC freely.
* **Minimalist Status HUD:** A non-intrusive, flicker-free ToolTip (✅/⚠️) appears at the top-left of your screen to notify you of the current status and upcoming window switches.
* **Dual-Interval Logic:**
    * **Main Sequence:** Executes a precise 6-row command chain every **50 minutes**.
    * **Anti-AFK System:** Sends a "Z" pulse every **~14 minutes** (with $\pm 30s$ random variance) to prevent session kicks.
* **Input Protection:** Utilizes `BlockInput` during active sequences to prevent accidental interference.
* **Human-Like Timings:** Includes randomized micro-variations ($\pm 20ms$) for every delay and keystroke.

## 🛠 Prerequisites

1.  **AutoHotkey v2.0+** must be installed.
2.  **ACTIVE GTA+ SUBSCRIPTION:** Essential for the menu navigation path.
3.  **Window Mode:** GTA V must be set to **"Windowed"** or **"Borderless Windowed"**.
4.  **Administrator Rights:** The script must run as Admin (auto-prompt included).

## ⌨️ Controls

| Hotkey | Action |
| :--- | :--- |
| **F1** | **Start Bot:** Initializes the first sequence and starts background timers. |
| **F2** | **Emergency Stop:** Terminates the script and immediately unlocks your Mouse/Keyboard. |

## ⚙️ How "Smart-Wait" Works

To maximize your productivity, the script features a custom "Smart-Key" logic:

1.  **Action:** The script focuses GTA V and sends a key command.
2.  **Release (✅):** For delays > 2 seconds, the script unlocks your mouse and shows a `✅`. You can work in other apps.
3.  **Warning (⚠️):** 3 seconds before the next command, the icon changes to `⚠️`.
4.  **Re-Focus:** The script pulls GTA V back to the foreground, freezes your cursor, and continues the sequence.

## ⚠️ Disclaimer

This script is for educational purposes. Using macros or automation tools may violate the game's Terms of Service and could result in account penalties. **This version is specifically built for GTA+ members.** Use at your own risk.
