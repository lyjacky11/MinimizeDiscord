SetTitleMatchMode, 3
SetTitleMatchMode, Slow

RunWait, "%localappdata%\Discord\Update.exe" "--processStart" "Discord.exe"
WinWaitClose, Discord Updater

Loop {
    IfWinExist, Discord
    {
        WinActivate, Discord
		WinHide
		ExitApp
    }
    Sleep 100
}