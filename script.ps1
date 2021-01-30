$UninstallPath = "F:\SysinternalsSuite"

# Looks for files in the stated file path, finds them if they have the key term uninstall and lists them
Get-ChildItem -Path "$($UninstallPath)\*" -Include *uninstall* 

cmd /c pause
