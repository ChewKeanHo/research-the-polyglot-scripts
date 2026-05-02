echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM ----------------------------------------------------------------------------
REM Copyright 2023 The Polyglot Scripts Continuous Research Project Team (https://github.com/ChewKeanHo/research-the-polyglots-script)
REM
REM The above unified aliases have one or more actual legal entities listed
REM outside of this document: (1) 'CREATORS.txt' or 'AUTHORS.txt'; and
REM (2) 'CONTRIBUTORS.txt'. They are located usually placed next to this
REM document in their respective project repository. Please refer to them for
REM compiling the complete list accordingly.
REM
REM
REM Licensed under Creative Common's Attribution-NoDerivatives 4.0 International
REM License (the 'License'). You must comply with the license to use the
REM content. Get the License at:
REM
REM https://creativecommons.org/licenses/by-nd/4.0
REM
REM No warranties are given. The license may not give you all of the permissions
REM necessary for your intended use. For example, other rights such as
REM publicity, privacy, or moral rights may limit how you use the material.
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
exit /b 1
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
$____root = Get-Location




# execute
## Templates
$____is_first = $true
foreach ($____target in @(
        "BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1",
        "POWERSHELL-POSIXSHELL.sh.ps1",
        "BATCH-POSIXSHELL.sh.cmd",
        "BATCH-POWERSHELL.cmd.ps1"
)) {
        if ($____is_first -ne $true) {
                $null = Write-Host "`n`n`n"
        }
        $____is_first = $false

        $null = Write-Host "Testing '${____target}' PowerShell Mode..."
        & "$(Get-Location)\Documents\Templates\${____target}" -Name "Alpha" -Length 5
        if ($LASTEXITCODE -ne 0) {
                $null = Write-Host "[ FAILED ]"
                $____verdict = $false
        }


        $null = Write-Host "`n`nTesting '${____target}' Batch Script Mode..."
        $null = Remove-Item "$(Get-Location)\Documents\Templates\Start.bat" -ErrorAction SilentlyContinue
        $null = Copy-Item `
                        -Path "$(Get-Location)\Documents\Templates\${____target}" `
                        -Destination "$(Get-Location)\Documents\Templates\Start.bat"
        & "$(Get-Location)\Documents\Templates\Start.bat" -Name "Alpha" -Length 5
        if ($LASTEXITCODE -ne 0) {
                $null = Write-Host "[ FAILED ]"
                $____verdict = $false
        }
}


## App
$null = Set-Location "${____root}\App"
$____is_first = $true
foreach ($____target in @(
        "BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1",
        "POWERSHELL-POSIXSHELL.sh.ps1",
        "BATCH-POSIXSHELL.sh.cmd",
        "BATCH-POWERSHELL.cmd.ps1"
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




## Lib
$null = Set-Location "${____root}\Lib"
$null = Write-Host "`n`n`n"
$null = Write-Host "Testing 'BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1' Lib PowerShell Mode..."
& "${____root}\Lib\BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1"
if ($LASTEXITCODE -ne 0) {
        $null = Write-Host "[ FAILED ]"
        $____verdict = $false
}


$null = Write-Host "`n`nTesting 'BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1' Lib Batch Script Mode..."
$null = Remove-Item "${____root}\Lib\Start.bat" -ErrorAction SilentlyContinue
$null = Copy-Item -Path "${____root}\Lib\BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1" `
                  -Destination "${____root}\Lib\Start.bat"
$null = Remove-Item "${____root}\Lib\libraries.bat" -ErrorAction SilentlyContinue
$null = Copy-Item -Path "${____root}\Lib\libraries.sh.cmd.ps1" `
                  -Destination "${____root}\Lib\libraries.bat"
& "${____root}\Lib\Start.bat"
if ($LASTEXITCODE -ne 0) {
        $null = Write-Host "[ FAILED ]"
        $____verdict = $false
}




# conclude
$null = Set-Location $____root
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
____root="$PWD"



# execute
## Templates
cd "${____root}/Documents/Templates"
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




## App
cd "${____root}/App"
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
        if [ ! "${____target##*"BATCH-POWERSHELL.cmd.ps1"}" = "$____target" ]; then
                ./"$____target" -Name "Alpha" -Length 5
        else
                ./"$____target" --name "Alpha" --length 5
                if [ $? -ne 0 ]; then
                        1>&2 printf -- "%s\n" "[  FAILED ]"
                        ____verdict=false
                fi
        fi
done




## Lib
cd "${____root}/Lib"
1>&2 printf -- "\n\n\n\n"
1>&2 printf -- "%s\n" \
        "Testing 'BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1' Lib POSIX Shell Mode..."
./BATCH-POWERSHELL-POSIXSHELL.sh.cmd.ps1
if [ $? -ne 0 ]; then
        1>&2 printf -- "%s\n" "[  FAILED ]"
        ____verdict=false
fi




# conclude
cd "$____root"
if [ "$____verdict" = "true" ]; then
        exit 0
fi
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit 1
#>
