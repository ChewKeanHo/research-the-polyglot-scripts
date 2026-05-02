echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM ----------------------------------------------------------------------------
REM License Notice Here
REM ----------------------------------------------------------------------------




REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
SETLOCAL enabledelayedexpansion
SET "____name=Holloway"
ECHO "Hello World, %____name%!"
EXIT /b 0
REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
EXIT /b 1
RUN_AS_BATCH
#> | Out-Null




echo \" <<'RUN_AS_POWERSHELL' >/dev/null # " | Out-Null
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
# configure
${____source_file} = $MyInvocation.MyCommand.Path
${____destination_file} = "$($____source_file -replace '\.ps1$', '').cmd"




# execute
if (-not (Test-Path $____destination_file)) {
        $null = Copy-Item $____source_file $____destination_file -Force
        if (-not $?) {
                $null = Write-Error "E: Failed to create ${____destination_file}."
                exit 1
        }
}


& cmd /c "`"${____destination_file}`" $args"
$____exit_code = $LASTEXITCODE

if (Test-Path $____source_file) {
    Remove-Item $____source_file -Force -ErrorAction SilentlyContinue
}

exit $____exit_code
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
exit 1
<#
RUN_AS_POWERSHELL




################################################################################
# Unix Main Codes                                                              #
################################################################################
____name="Holloway"
1>&2 printf -- "Hello World, %s!" "$____name"
exit 0
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit 1
#>
