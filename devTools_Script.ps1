# installing chocolatey as packagemanager
Write-Host "`n`nInstalling Chocolatey package manager`n`n"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Start-Sleep -Seconds 2

# default editor vscode
Write-Host "The choice of editor would be VS Code`n`n"
# select language
Write-Output "Select Language of your choice:"
Write-Output "1. C/C++"
Write-Output "2. Python"
Write-Output "(For multiple choice add space between them like: 1 2 3)"
$choice = Read-Host -Prompt "Enter choice "

# converting input values to array and removing space
$values = @()
for($i=0; $i -lt $choice.Length; $i++){
    if($choice[$i] -ne " "){
            $values += $choice[$i]
    }
}

#installing vscode
Write-Host "`n`nInstalling VS Code`n`n"
choco install vscode -y --force

Start-Sleep -Seconds 2

switch($values){
    1 {
        Write-Host "`n`nInstalling mingw for gcc and g++`n`n"
        #installing gcc,g++
        choco install mingw -y --force
        Start-Sleep -Seconds 2
        Write-Host "`nInstalling cpp extension for vscode`n"
        #installing cpp extensions
        choco install vscode-cpptools -y --force
        Start-Sleep -Seconds 2
    }

    2 {
        Write-Host "`n`nInstalling Python`n`n"
        #installing python
        choco install python -y --force
        Start-Sleep -Seconds 2
        Write-Host "`nInstalling python extension for vscode`n"
        #installing python extension
        choco install vscode-python -y --force
    }

    Default {
        Write-Host "`n`nWrong Choice`n`n"
        Exit
    }

}

Write-Host "`n`nEverything is installed`n`n"
Write-Output "`n================`nRestarting......`n===============`n"

Restart-Computer
