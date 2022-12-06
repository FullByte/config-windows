#https://www.thomasmaurer.ch/2021/08/install-azure-tools-using-winget/

##### Install Azure Tools
winget install Microsoft.AzureStorageExplorer
# winget install Microsoft.AzureStorageEmulator
winget install Microsoft.AzureFunctionsCoreTools
winget install Microsoft.AzureDataStudio
# winget install Microsoft.AzureCosmosEmulator
# winget install Microsoft.azure-iot-explorer
winget install Microsoft.Bicep
winget install Microsoft.AzureCLI
# winget install Microsoft.ServiceFabricRuntime

##### Install AzCopy v10
Invoke-WebRequest -Uri "https://aka.ms/downloadazcopy-v10-windows" -OutFile AzCopy.zip -UseBasicParsing
Expand-Archive ./AzCopy.zip ./AzCopy -Force
mkdir "$home/AzCopy"
Get-ChildItem ./AzCopy/*/azcopy.exe | Move-Item -Destination "$home\AzCopy\AzCopy.exe"
$userenv = [System.Environment]::GetEnvironmentVariable("Path", "User")
[System.Environment]::SetEnvironmentVariable("PATH", $userenv + ";$home\AzCopy", "User")

##### Install PowerShell 7 and Azure PowerShell
winget install Microsoft.PowerShell
pwsh.exe
Install-Module Az

##### Install Windows Terminal
winget install Microsoft.WindowsTerminal

##### Install Git
winget install Git.Git
winget install GitHub.cli

##### Install Visual Studio Code
winget install Microsoft.VisualStudioCode

##### VS Code Extensions:
code --install-extension AzurePolicy.azurepolicyextension
code --install-extension ms-azuretools.vscode-azureresourcegroups
code --install-extension ms-azuretools.vscode-azurestorage
code --install-extension ms-azuretools.vscode-azurevirtualmachines
code --install-extension ms-azuretools.vscode-bicep
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.vscode-dotnet-runtime
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-ssh-explorer
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.azure-account
code --install-extension ms-vscode.azurecli
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode.vscode-node-azure-pack
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsonline.vsonline
code --install-extension msazurermtools.azurerm-vscode-tools