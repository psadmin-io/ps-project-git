# Requires Powershell 5 for native symlinks
Write-Output "Making symlinks to hooks..."
Remove-Item -recurse -force ../.git/hooks/

$link = "../.git/hooks"
$target = "../.gitpsoft/hooks"

if ($PSVersionTable.PSVersion.Major -ge 5)
{
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}
else
{
    $command = "cmd /c mklink /d"
    invoke-expression "$command ""$link"" ""$target"""
}

Write-Output "...done"
