# LICENSE NOTICE HERE




# validate presence
$null = Write-Host "Hello World from lib/namespace/init.ps1!"




# validate arguments
$____i = 1
foreach ($arg in $Args) {
    $null = Write-Host "Arguments ${____i}: |${arg}|"
    $____i += 1
}
$null = Write-Host "Arguments @: |${Args}|"

if ("${Args}" -ne "-Name Alpha -Length 5") {
        $null = Write-Host @"
E: Incorrect Argument Parsing. Test Failed.
"@
        return 1
}




# respond exit code
return 0
