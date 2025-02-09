# Download and install Cascadia Cove Nerd Font
Write-Output "Installing Cascadia Cove Nerd Font..."
$fontUrl = "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCove.zip"
$fontZip = "$env:TEMP\CascadiaCove.zip"
$fontDir = "$env:TEMP\CascadiaCove"

# Download the font
Invoke-WebRequest -Uri $fontUrl -OutFile $fontZip

# Extract the font
Expand-Archive -Path $fontZip -DestinationPath $fontDir

# Install the font
$shell = New-Object -ComObject Shell.Application
$fontsFolder = $shell.Namespace(0x14) # 0x14 is the Fonts folder
Get-ChildItem -Path $fontDir -Recurse -Filter *.ttf | ForEach-Object {
    $fontsFolder.CopyHere($_.FullName)
}

# Clean up
Remove-Item -Path $fontZip -Force
Remove-Item -Path $fontDir -Recurse -Force

Write-Output "Cascadia Cove Nerd Font installed successfully."