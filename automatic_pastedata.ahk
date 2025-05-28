#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

; Initialize variables
FileLines := []
CurrentLine := 1
FilePath := "data.txt"

; Read all lines from file into array
if FileExist(FilePath) {
    FileRead, FileContent, %FilePath%
    Loop, Parse, FileContent, `n, `r
    {
        if (A_LoopField != "")
            FileLines.Push(A_LoopField)
    }
}

; Hotkey for pasting (Ctrl+V) - fixed version
^v::
if (FileLines.Length() > 0) {
    ; Save original clipboard
    ClipSaved := ClipboardAll
    
    ; Put current line in clipboard
    Clipboard := FileLines[CurrentLine]
    
    ; Wait for clipboard to be ready
    ClipWait, 1
    
    ; Send paste using SendRaw to avoid triggering hotkey again
    SendRaw, %Clipboard%
    
    ; Restore original clipboard
    Clipboard := ClipSaved
    ClipSaved := ""
    
    ; Move to next line
    CurrentLine++
    if (CurrentLine > FileLines.Length())
        CurrentLine := 1
} else {
    ; If no data loaded, restore normal paste functionality
    Send, {Ctrl down}v{Ctrl up}
}
return

; Optional: Hotkey to reload the file (Ctrl+Shift+R)
^+r::
FileLines := []
CurrentLine := 1
if FileExist(FilePath) {
    FileRead, FileContent, %FilePath%
    Loop, Parse, FileContent, `n, `r
    {
        if (A_LoopField != "")
            FileLines.Push(A_LoopField)
    }
}
return