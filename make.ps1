# Requires Powershell 5 for native symlinks
Write-Output "Making symlinks to hooks..."

$link = "../.git/hooks"
$target = "../.gitpsoft/hooks"

if (!(Get-ChildItem ..\.git | Where-Object { $_.LinkType -eq "SymbolicLink" })) {
        Write-Output "`tRemoving .git/hooks directory"
        Remove-Item $link -recurse -force         
    }

if ($PSVersionTable.PSVersion.Major -ge 5)
{
    New-Item -Path $link -ItemType SymbolicLink -Value $target -Force
}
else
{
    $command = "cmd /c mklink /d"
    invoke-expression "$command ""$link"" ""$target"""
}

Write-Output "...done"
