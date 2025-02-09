# Install Oh My Posh
Write-Output "Installing Oh My Posh..."
winget install JanDeDobbeleer.OhMyPosh -s winget

# Ensure Oh My Posh is in the PATH
$ohMyPoshPath = "$env:ProgramFiles\oh-my-posh\bin"
if (-not ($env:Path -split ';' -contains $ohMyPoshPath)) {
    [Environment]::SetEnvironmentVariable("Path", "$env:Path;$ohMyPoshPath", [EnvironmentVariableTarget]::Machine)
}

Write-Output "Oh My Posh installed successfully."