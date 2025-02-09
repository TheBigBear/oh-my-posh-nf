# Configure Windows Terminal to use Cascadia Cove Nerd Font
Write-Output "Configuring Windows Terminal..."

$terminalSettingsPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
if (Test-Path -Path $terminalSettingsPath) {
    $settings = Get-Content -Path $terminalSettingsPath | ConvertFrom-Json

    # Update font settings
    $settings.profiles.defaults.font = @{
        face = "Cascadia Cove NF"
        size = 12
    }

    # Save the updated settings
    $settings | ConvertTo-Json -Depth 10 | Set-Content -Path $terminalSettingsPath
} else {
    Write-Output "Windows Terminal settings file not found. Please ensure Windows Terminal is installed."
}

Write-Output "Windows Terminal configured successfully."