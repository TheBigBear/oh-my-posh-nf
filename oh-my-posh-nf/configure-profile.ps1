# Configure PowerShell profile for Oh My Posh for ALL USERS
Write-Output "Configuring PowerShell profile for all users..."

$profileContent = @"
# Oh My Posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
"@

# Ensure the ALL USERS profile directory exists
$allUsersProfileDir = "$env:ProgramFiles\PowerShell\7\Profile"
if (-not (Test-Path -Path $allUsersProfileDir)) {
    New-Item -ItemType Directory -Path $allUsersProfileDir -Force
}

# Add Oh My Posh to the ALL USERS profile
$allUsersProfilePath = "$allUsersProfileDir\Microsoft.PowerShell_profile.ps1"
Add-Content -Path $allUsersProfilePath -Value $profileContent

# Ensure the CURRENT USER profile directory exists
$currentUserProfileDir = Split-Path -Path $PROFILE -Parent
if (-not (Test-Path -Path $currentUserProfileDir)) {
    New-Item -ItemType Directory -Path $currentUserProfileDir -Force
}

# Add Oh My Posh to the CURRENT USER profile
Add-Content -Path $PROFILE -Value $profileContent

Write-Output "PowerShell profile configured for all users and current user successfully."


## # Configure PowerShell profile for Oh My Posh
## Write-Output "Configuring PowerShell profile..."
## 
## $profileContent = @"
## # Oh My Posh
## oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
## "@
## 
## # Ensure the profile directory exists
## $profileDir = Split-Path -Path $PROFILE -Parent
## if (-not (Test-Path -Path $profileDir)) {
##     New-Item -ItemType Directory -Path $profileDir
## }
## 
## # Add Oh My Posh to the profile
## Add-Content -Path $PROFILE -Value $profileContent
## 
## Write-Output "PowerShell profile configured successfully."