#Requires AutoHotkey v2.0
#SingleInstance Force

; --- AUTO-ADMIN ---
if !A_IsAdmin {
    try {
        Run('*RunAs "' A_ScriptFullPath '"')
    }
    ExitApp()
}

; --- Konfiguration ---
TargetWindow := "Grand Theft Auto V"
global SequenzAktiv := false 

F1:: {
    static Gestartet := false
    if Gestartet {
        ToolTip("Skript läuft bereits!")
        return
    }
    Gestartet := true
    ToolTip("✅ BOT AKTIV")
    SetTimer(() => ToolTip(""), 2000)

    SetTimer(RunFullSequence, 50 * 60 * 1000) 
    SetTimer(RunAntiAFK, (14 * 60 * 1000) + Random(-30000, 30000)) 
    
    RunFullSequence()
}

; --- HAUPTSEQUENZ ---
RunFullSequence() {
    if !WinExist(TargetWindow)
        return

    global SequenzAktiv := true 
    
    try {
        FocusGTA()
        Loop 5 {
            SK("BackSpace", 20, 20 + Random(-5, 5))
        }
        Sleep(500)

        ; Deine Sequenz (Zeile 1-6)
        SK("Up", 20, 1000), SK("Right", 20, 1000), SK("Enter", 20, 1000), SK("Up", 20, 1000), SK("Enter", 20, 1000)
        SK("Enter", 20, 1000), SK("Down", 20, 1000), SK("Enter", 20, 1000), SK("Enter", 20, 20000), SK("Down", 20, 1000)
        SK("Enter", 20, 20000), SK("Down", 20, 1000), SK("Enter", 20, 20000), SK("Down", 20, 1000), SK("Enter", 20, 20000)
        SK("Down", 20, 1000), SK("Enter", 20, 20000), SK("BackSpace", 20, 1000), SK("Down", 20, 1000)
        SK("Enter", 20, 1000), SK("Enter", 20, 1000), SK("Down", 20, 1000), SK("Enter", 20, 1000), SK("BackSpace", 20, 1000)
        SK("BackSpace", 20, 1000), SK("BackSpace", 20, 1000), SK("BackSpace", 20, 20), SK("BackSpace", 20, 0)

    } finally {
        global SequenzAktiv := false 
        UnblockAndReturn()
    }
}

; --- ANTI-AFK ---
RunAntiAFK() {
    if (SequenzAktiv) {
        SetTimer(RunAntiAFK, 10000)
        return
    }
    if !WinExist(TargetWindow)
        return

    PrevWin := WinGetID("A")
    FocusGTA()
    SK("z", 60, 100)
    
    if WinExist("ahk_id " PrevWin)
        WinActivate("ahk_id " PrevWin)
    
    BlockInput(false)
    SetTimer(RunAntiAFK, (14 * 60 * 1000) + Random(-30000, 30000))
}

; --- SMART HELPERS ---

SK(Key, Hold, Wait) {
    global TargetWindow
    
    if !WinActive(TargetWindow)
        FocusGTA()

    SendEvent("{" Key " down}")
    Sleep(Hold)
    SendEvent("{" Key " up}")
    
    if (Wait > 2000) {
        UnblockAndReturn()
        
        ; Initiales Häkchen (Eingabe frei)
        ToolTip("✅ Frei")
        
        ; Wartezeit bis zur Warnung (Wait minus 3 Sekunden)
        Sleep(Wait - 3000)
        
        ; Warn-Symbol (Wechsel bevorstehend)
        ToolTip("⚠️ Fokus-Wechsel")
        Sleep(3000)
        
        ToolTip("") ; ToolTip löschen vor dem Fokus
        FocusGTA()
    } else if (Wait > 0) {
        Sleep(Wait + Random(-20, 20))
    }
}

FocusGTA() {
    global TargetWindow
    if !WinActive(TargetWindow) {
        WinActivate(TargetWindow)
        WinWaitActive(TargetWindow, , 2)
    }
    ResetAllKeys()
    BlockInput(true)
}

UnblockAndReturn() {
    BlockInput(false)
    ToolTip("")
}

ResetAllKeys() {
    Loop 255 {
        k := Format("vk{:x}", A_Index)
        if GetKeyState(k)
            SendEvent("{" k " up}")
    }
}

F2:: {
    BlockInput(false)
    ExitApp()
}
