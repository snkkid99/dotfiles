# $ENV:STARSHIP_CONFIG = "$HOME\.starship\starship.toml"
# $ENV:STARSHIP_DISTRO = "者"
# function Invoke-Starship-TransientFunction {
#     &starship module character
# }
# Invoke-Expression (&starship init powershell)
# Enable-TransientPrompt

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# import
Import-Module posh-git
Import-Module -Name Terminal-Icons

# omp
$omp_config = Join-Path $PSScriptRoot ".\omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource HistoryAndPlugin 
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias vim nvim

# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function devEnv()
{
  Import-Module "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\Microsoft.VisualStudio.DevShell.dll" 
  Enter-VsDevShell 2ebd8216 -SkipAutomaticLocation -DevCmdArguments "-arch=x64 -host_arch=x64"
}

. "$PSScriptRoot\Common.ps1"
