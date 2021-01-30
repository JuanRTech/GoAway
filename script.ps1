$UninstallPath = "C:\Users\funguy7777\Documents\SysinternalsSuite"

# Looks for files in the stated file path, finds them if they have the key term uninstall and lists them
Get-ChildItem -Path "$($UninstallPath)\*" -Include *uninstall* 

#for each loop that takes each file found called "uninstall.exe" and runs it
foreach ($uninstallexe in Get-ChildItem -Path "$($UninstallPath)\*" -Include *uninstall* )
{
    Start-Process -FilePath $uninstallexe
}

cmd /c pause