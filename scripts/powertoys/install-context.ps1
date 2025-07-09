if ($PSVersionTable.PSVersion.Major -ge 6) { Import-Module Appx -UseWindowsPowershell 3>$null }

$PackageFamilyNames = @(
    'Microsoft.PowerToys.PowerRenameContextMenuPackage_8wekyb3d8bbwe',
    'Microsoft.PowerToys.ImageResizerContextMenuPackage_8wekyb3d8bbwe',
    'Microsoft.PowerToys.FileLocksmithContextMenuPackage_8wekyb3d8bbwe'
)

# 确保卸载任何可能存在的旧版本，解决“重复安装”错误
foreach ($PackageFamilyName in $PackageFamilyNames) {
    Get-AppxPackage -Name $PackageFamilyName | Remove-AppxPackage
}

# 只用现代、正确的方式安装
Add-AppxPackage -Path "{{scoop_dir}}\WinUI3Apps\PowerRenameContextMenuPackage.msix" -ExternalLocation "{{scoop_dir}}\WinUI3Apps" | Out-Null
Add-AppxPackage -Path "{{scoop_dir}}\WinUI3Apps\ImageResizerContextMenuPackage.msix" -ExternalLocation "{{scoop_dir}}\WinUI3Apps" | Out-Null
Add-AppxPackage -Path "{{scoop_dir}}\WinUI3Apps\FileLocksmithContextMenuPackage.msix" -ExternalLocation "{{scoop_dir}}\WinUI3Apps" | Out-Null
