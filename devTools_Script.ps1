# installing chocolatey as packagemanager
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Start-Sleep -Seconds 2

#installing gcc,g++
choco install mingw -y --force

Start-Sleep -Seconds 2

#installing python
choco install python -y --force

Start-Sleep -Seconds 2

#installing vscode
choco install vscode -y --force

Start-Sleep -Seconds 2

#installing cpp extensions
choco install vscode-cpptools -y --force

Start-Sleep -Seconds 2

#installing python extension
choco install vscode-python -y --force

Write-Output "\n================\nRestarting......\n================\n"

Restart-Computer
