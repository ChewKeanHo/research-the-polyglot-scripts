echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM ----------------------------------------------------------------------------
REM LICENSE CLAUSES HERE
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
    ECHO E: Failed to create %destination_file%
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
# IMPORTANT NOTICE
# 1. Downstream ${____init_file} **MUST STRICTLY** 'return 0' (number 0) to
#    indicate a successful happy path. Anything else including missing is
#    failed.




# configure
${____init_file} = "init.ps1"
${____init_directory} ="lib\namespace"




# scan
# Current directory - user-customized application
${env:PROJECT_DIRECTORY} = "$(Get-Location)\${____init_directory}\${____init_file}"

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native User Rootless Software Directory
        ${env:PROJECT_DIRECTORY} = "${env:LOCALAPPDATA}\Programs\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native OS Program Files
        ${env:PROJECT_DIRECTORY} = "${env:PROGRAMFILES}\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native OS Program Files (x86)
        ${env:PROJECT_DIRECTORY} = "${env:PROGRAMFILES(x86)}\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        Write-Error @"
E: Failed to Locate Init File. Bailing Out...

"@
        exit 1
}




# execute
$____process = . $env:PROJECT_DIRECTORY @args
if ($____process -eq "0") {
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
# configure
____init_file="init.sh"
____init_directory="lib/namespace"




# scan
# Current directory - user-customized application
PROJECT_DIRECTORY="${PWD%/}/${____init_directory}/${____init_file}"

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        if ([ -d "/app" ] && [ -f "/.flatpak-info" ]); then
                # Flatpak
                PROJECT_DIRECTORY="/app/${____init_directory}/${____init_file}"
        elif [ ! "$APPDIR" = "" ]; then
                # AppImage
                PROJECT_DIRECTORY="${APPDIR%/}/${____init_directory}/${____init_file}"
        elif [ ! "$SNAP" = "" ]; then
                # Snapcraft
                PROJECT_DIRECTORY="${SNAP%/}/${____init_directory}/${____init_file}"
        fi
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native User Rootless Software Directory
        PROJECT_DIRECTORY="${HOME%/}/.local/${____init_directory}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native OS Machine-Specific
        PROJECT_DIRECTORY="/usr/local/${____init_directory}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native OS
        PROJECT_DIRECTORY="/usr/${____init_directory}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native OS Root
        PROJECT_DIRECTORY="/${____init_directory}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        1>&2 printf "%s" "\
E: Failed to Locate Init File. Bailing Out...

"
        exit 1
fi




# execute
. "$PROJECT_DIRECTORY" "$@"
exit $?
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit 1
#>
