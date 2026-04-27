echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM ----------------------------------------------------------------------------
REM LICENSE NOTICE HERE
REM ----------------------------------------------------------------------------




REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
REM IMPORTANT NOTICE
REM 1. Downstream $____init_file **MUST STRICTLY** 'return 0' (number 0) to
REM    indicate a successful happy path. Anything else including missing is
REM    failed.
SETLOCAL enabledelayedexpansion




REM configure
WHERE powershell >nul 2>&1
IF %ERRORLEVEL% neq 0 (
    ECHO E: PowerShell -> ???
    EXIT /b 1
)
SET "____init_file=init.ps1"
SET "____init_directory=lib\namespace"




REM scan
REM Current directory - user-customized application
SET "PROJECT_DIRECTORY=%CD%\%____init_directory%\%____init_file%"

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native User Rootless Software Directory
        SET "PROJECT_DIRECTORY=%LOCALAPPDATA%\Programs\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native OS Program Files
        SET "PROJECT_DIRECTORY=%PROGRAMFILES%\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native OS Program Files (x86)
        SET "PROJECT_DIRECTORY=%PROGRAMFILES(x86)%\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        ECHO "E: Failed to Locate Init File. Bailing Out..."
        EXIT /b 1
)




REM execute
powershell -NoProfile ^
        -ExecutionPolicy RemoteSigned ^
        -Command ^
        "$____ret = . '%PROJECT_DIRECTORY%' %*; if ($____ret -eq '0') { exit 0 } else { exit 1 }"
EXIT /B !ERRORLEVEL!
REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
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
