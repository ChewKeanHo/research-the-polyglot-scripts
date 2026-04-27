echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM ----------------------------------------------------------------------------
REM License Notice Here
REM ----------------------------------------------------------------------------




REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
SETLOCAL enabledelayedexpansion




REM configure
WHERE powershell >nul 2>&1
IF %ERRORLEVEL% neq 0 (
        ECHO E: PowerShell -> ???
        EXIT /b 1
)
SET "base_name=%~n0"
SET "source_file=%~f0"
SET "destination_file=%~dp0%base_name%.sh.ps1"




REM execute
IF exist "%destination_file%" GOTO :run_ps1
COPY /y "%source_file%" "%destination_file%" >nul
IF %ERRORLEVEL% neq 0 (
    ECHO E: Failed to create %destination_file%.
    EXIT /b 1
)


:run_ps1
powershell -NoProfile -ExecutionPolicy RemoteSigned -File "%destination_file%" %*
set "EXIT_CODE=!ERRORLEVEL!"

IF EXIST "%source_file%" (
        START /B "" cmd /c DEL "%source_file%" >nul 2>&1
)

EXIT /B %EXIT_CODE%
REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
RUN_AS_BATCH
#> | Out-Null




echo \" <<'RUN_AS_POWERSHELL' >/dev/null # " | Out-Null
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
$____name = "Holloway"
$null = Write-Host "Hello World, ${____name}!"
exit 0
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
