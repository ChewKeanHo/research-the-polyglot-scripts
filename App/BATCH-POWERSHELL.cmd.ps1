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
if [ ! "${0##/bin}" = "$0" ]; then
        # file was sourced instead of executed. Do nothing but report back as
        # error.
        1>&2 printf -- "%s" "\
E: Shell is Unsupported. Bailing Out...
"
        exit 1
fi


____source_file="$0"
if [ ! "${0##./}" = "$0" ]; then
        # relative path
        ____source_file="${PWD%/}/${0##./}"
fi
____destination_file="${____source_file%%.*}.cmd.ps1"





# execute
if [ ! -e "$____destination_file" ]; then
        mv "$____source_file" "$____destination_file"
        if [ $? -ne 0 ]; then
                1>&2 printf -- "%s" "\
E: Failed to create ${____destination_file}.
"
                exit 1
        fi
fi
unset ____source_file


POWERSHELL=""
command -v pwsh > /dev/null
if [ $? -eq 0 ]; then
        POWERSHELL="pwsh"
fi

command -v powershell > /dev/null
if [ $? -eq 0 ]; then
        POWERSHELL="powershell" # use the fullname version by default
fi

if [ ! "$POWERSHELL" = "" ]; then
        "$POWERSHELL" -NoProfile \
                        -ExecutionPolicy RemoteSigned \
                        -File "$____destination_file" \
                        "$@"
        exit $?
fi


1>&2 printf -- "%s" "\
E: Failed to execute PowerShell.
"
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit 1
#>
