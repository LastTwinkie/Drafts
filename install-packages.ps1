# Check if Chocolatey is installed
if (!(Test-Path "$env:ProgramData\chocolatey\choco.exe")) {
    Write-Host "Chocolatey not found. Installing..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
    Write-Host "Chocolatey is already installed."
}

# Refresh environment variables
$env:Path += ";$env:ProgramData\chocolatey\bin"

# Update Chocolatey
choco upgrade chocolatey -y

# Install applications
$packages = @(
    "opera-gx",
    "vscodium",
    "7zip",
    "discord",
    "foobar2000",
    "vlc",
    "steam",
    "vlc",
    "winscp",
    "winaero-tweaker",
    "epicgameslauncher",
	"evga-precision-x1",
	"logitechgaming",
	"vortex",
	"qbittorrent",
	"pia",
	"libreoffice",
	""
)

foreach ($package in $packages) {
    Write-Host "Installing $package..."
    choco install $package -y
}

# Upgrade all installed packages
choco upgrade all -y

Write-Host "Installation Complete!"
