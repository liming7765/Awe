if ($PSVersionTable.PSVersion.Major -ge 6) { Import-Module Appx -UseWindowsPowershell 3>$null }

$PackageFamilyNames = @(
    'Microsoft.PowerToys.PowerRenameContextMenuPackage_8wekyb3d8bbwe',
    'Microsoft.PowerToys.ImageResizerContextMenuPackage_8wekyb3d8bbwe',
    'Microsoft.PowerToys.FileLocksmithContextMenuPackage_8wekyb3d8bbwe'
)

foreach ($PackageFamilyName in $PackageFamilyNames) {
    Get-AppxPackage -Name $PackageFamilyName | Remove-AppxPackage
}
