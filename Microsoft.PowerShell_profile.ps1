Import-Module posh-git
Import-Module oh-my-posh
Import-Module Get-ChildItemColor
Set-PSReadLineOption -EditMode Emacs
Set-Theme Paradox
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
Set-Alias ll Get-ChildItem -option AllScope 
New-Alias which get-command
New-Alias top ntop

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
