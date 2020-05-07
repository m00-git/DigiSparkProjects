function set-shortcut {

param ( [string]$SourceLnk, [string]$DestinationPath )

    $WshShell = New-Object -comObject WScript.Shell

    $Shortcut = $WshShell.CreateShortcut($SourceLnk)

    $Shortcut.TargetPath = $DestinationPath

    $Shortcut.Save()

    }

set-shortcut "C:\Users\user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\bgpl.lnk" "C:\Program Files\Windows Photo Viewer\bgpl.ps1"