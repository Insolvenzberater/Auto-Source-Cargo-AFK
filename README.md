# GTA V Smart AFK & Business Automation (v2.0)

# 🚨 IMPORTANT: GTA+ SUBSCRIPTION REQUIRED 🚨
**This script automates menu paths exclusive to GTA+ members. Additionally, it now manages business safe collections (Nightclub, Bail Office, etc.).**

---

![GTA V](https://img.shields.io/badge/Game-GTA_V-green)
![AHK Version](https://img.shields.io/badge/Language-AutoHotkey_v2-blue)
![Subscription](https://img.shields.io/badge/GTA+_Subscription-REQUIRED-gold)
![Safe Management](https://img.shields.io/badge/Business-Safe_Auto--Collect-orange)

An advanced automation suite for Grand Theft Auto V. This bot handles both the **GTA+ command chain** every 50 minutes and the **Safe Collection** every 5 cycles (~4 hours) to ensure your business profits (Nightclub, Bail Office) never hit their cap.

## 🚀 New in v2.0

* **Business Safe Integration:** Automatically executes an additional collection sequence every 5th cycle. This ensures you can continuously collect income from the Bail Office and Nightclub without manual intervention.
* **Optimized AFK Interval:** Anti-AFK pulse frequency increased to **11 minutes** for higher reliability in keeping the session alive.
* **Total Focus Mode:** To ensure 100% accuracy in menu navigation, the script now maintains window focus and blocks user input during the entire sequence. (changable via the 20001ms amount)
* **US Layout Native:** Optimized for US keyboard layouts (utilizes "W" for AFK pulses).

## 🛠 Features

* **Dual-Logic Automation:**
    * **Main Sequence:** Precise command chain for GTA+ features executed every **50 minutes**.
    * **Safe Emptying:** A secondary, extended routine that triggers every 5th main cycle to empty business safes.
    * **Anti-AFK System:** Sends a "W" pulse every **~11 minutes** (with $\pm 30s$ random variance) to prevent session kicks.
* **Input Protection:** Utilizes `BlockInput` during active sequences to prevent accidental mouse or keyboard interference.
* **Human-Like Timings:** Includes randomized micro-variations ($\pm 20ms$) for every keystroke to mimic natural behavior.

## 🛠 Prerequisites

1.  **AutoHotkey v2.0+** must be installed.
2.  **ACTIVE GTA+ SUBSCRIPTION:** Essential for the menu navigation path.
3.  **Window Mode:** GTA V must be set to **"Windowed"** or **"Borderless Windowed"**.
4.  **Administrator Rights:** The script must run as Admin (auto-prompt included).

## ⌨️ Controls

| Hotkey | Action |
| :--- | :--- |
| **F1** | **Start Bot:** Initializes the first sequence (including Safes) and starts background timers. |
| **F2** | **Emergency Stop:** Terminates the script and immediately restores full Mouse/Keyboard control. |

## ⚙️ How the "Safe-Cycle" Works

To maximize efficiency and income:
1.  **First Start:** Pressing **F1** triggers the main sequence followed immediately by the Safe-Collection routine (since the initial counter is set to 5).
2.  **Tracking:** The script tracks cycles. It will run the main 50-min sequence 4 times solo.
3.  **The 5th Cycle:** On the 5th run, the bot appends the Safe-Collection path to the end of the normal routine and resets the counter.

## ⚠️ Disclaimer

This script is for educational purposes. Using macros or automation tools may violate the game's Terms of Service and could result in account penalties. This version is specifically built for GTA+ members with active business properties. Use at your own risk.
