echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM LICENSE CLAUSES HERE
REM ----------------------------------------------------------------------------




REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
@echo off
setlocal enabledelayedexpansion

echo "DO NOT USE BATCH!"
exit /b 1
REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
RUN_AS_BATCH
#> | Out-Null




echo \" <<'RUN_AS_POWERSHELL' >/dev/null # " | Out-Null
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
# IMPORTANT NOTICE
# 1. Downstream ${____init_file} **MUST STRICTLY** 'return 0' (number 0) to
#    indicate a successful happy path. Anything else including missing is
#    failed.
$____verdict = $true
$null = Set-Location "$(Get-Location)\App"


# execute
$____is_first = $true
foreach ($____target in @(
        "BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1",
        "POWERSHELL-POSIXSHELL.sh.ps1",
        "BATCH-POSIXSHELL.sh.cmd"
)) {
        if ($____is_first -ne $true) {
                $null = Write-Host "`n`n`n"
        }
        $____is_first = $false

        $null = Write-Host "Testing '${____target}' PowerShell Mode..."
        & "$(Get-Location)\${____target}" -Name "Alpha" -Length 5
        if ($LASTEXITCODE -ne 0) {
                $null = Write-Host "[ FAILED ]"
                $____verdict = $false
        }


        $null = Write-Host "`n`nTesting '${____target}' Batch Script Mode..."
        $null = Remove-Item "$(Get-Location)\Start.bat" -ErrorAction SilentlyContinue
        $null = Copy-Item `
                        -Path "$(Get-Location)\${____target}" `
                        -Destination "$(Get-Location)\Start.bat"
        & "$(Get-Location)\Start.bat" -Name "Alpha" -Length 5
        if ($LASTEXITCODE -ne 0) {
                $null = Write-Host "[ FAILED ]"
                $____verdict = $false
        }
}

if ($____verdict -eq $true) {
        exit 0
}
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
exit 1
<#
RUN_AS_POWERSHELL




################################################################################
# Unix Main Codes                                                              #
################################################################################
____verdict=true
cd "${PWD}/App"


# execute
____is_first=true
for ____target in ./*; do
        if [ ! -f "$____target" ]; then
                continue
        fi

        if [ ! "$____is_first" = "true" ]; then
                1>&2 printf -- "\n\n\n\n"
        fi
        unset ____is_first

        1>&2 printf -- "Testing '%s' POSIX Shell Mode...\n" "$____target"
        ./"$____target" --name "Alpha" --length 5
        if [ $? -ne 0 ]; then
                ____verdict=false
        fi
done

if [ "$____verdict" = "true" ]; then
        exit 0
fi
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit 1
#>
