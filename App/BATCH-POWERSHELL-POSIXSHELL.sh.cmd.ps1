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

SET "____init_package_name=My App"



REM scan
REM Current directory - user-customized application
SET "PROJECT_DIRECTORY=%CD%\%____init_directory%\%____init_file%"

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native User Rootless Software Directory
        SET "PROJECT_DIRECTORY=%LOCALAPPDATA%\Programs\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native User Chocolatey Software Directory
        SET "PROJECT_DIRECTORY=%CHOCOLATEYINSTALL%\lib\%____init_package_name%\tools\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native User Scoop Custom Software Directory
        SET "PROJECT_DIRECTORY=%SCOOP%\apps\%____init_package_name%\current\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native OS Chocolatey Software Directory
        SET "PROJECT_DIRECTORY=%ProgramData%\chocolatey\lib\%____init_package_name%\tools\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native User Scoop Software Directory
        SET "PROJECT_DIRECTORY=%USERPROFILE%\scoop\apps\%____init_package_name%\current\%____init_directory%\%____init_file%"
)

IF NOT EXIST "%PROJECT_DIRECTORY%" (
        REM Native OS Scoop Software Directory
        SET "PROJECT_DIRECTORY=%SCOOP_GLOBAL%\apps\%____init_package_name%\current\%____init_directory%\%____init_file%"
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
EXIT /b !ERRORLEVEL!
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
# IMPORTANT NOTICE
# 1. Downstream ${____init_file} **MUST STRICTLY** 'return 0' (number 0) to
#    indicate a successful happy path. Anything else including missing is
#    failed.




# configure
${____init_file} = "init.ps1"
${____init_directory} ="lib\namespace"

${____init_package_name} = "My App"




# scan
# Current directory - user-customized application
${env:PROJECT_DIRECTORY} = "$(Get-Location)\${____init_directory}\${____init_file}"

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native User Rootless Software Directory
        ${env:PROJECT_DIRECTORY} = "${env:LOCALAPPDATA}\Programs\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native User Chocolatey Software Directory
        ${env:PROJECT_DIRECTORY} = "${env:CHOCOLATEYINSTALL}\lib\${____init_package_name}\tools\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native User Scoop Custom Software Directory
        ${env:PROJECT_DIRECTORY} = "${env:SCOOP}\apps\${____init_package_name}\current\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native OS Chocolatey Software Directory
        ${env:PROJECT_DIRECTORY} = "${env:PROGRAMDATA}\chocolatey\lib\${____init_package_name}\tools\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native User Scoop Software Directory
        ${env:PROJECT_DIRECTORY} = "${env:USERPROFILE}\scoop\apps\${____init_package_name}\current\${____init_directory}\${____init_file}"
}

if (-not (Test-Path ${env:PROJECT_DIRECTORY})) {
        # Native OS Scoop Software Directory
        ${env:PROJECT_DIRECTORY} = "${env:SCOOP_GLOBAL}\apps\${____init_package_name}\current\${____init_directory}\${____init_file}"
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

____init_package_name="My App"

____init_macos_bundle_name="${____init_package_name}.app"
____init_macos_directory="namespace"




# scan
# Native User Current Directory - User-Customized Application
PROJECT_DIRECTORY="${PWD%/}/${____init_directory%/}/${____init_file}"

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native User - Linux 2nd-Generation Package
        if ([ -d "/app" ] && [ -f "/.flatpak-info" ]); then
                # Flatpak
                PROJECT_DIRECTORY="/app/${____init_directory%/}/${____init_file}"
        elif [ ! "$APPDIR" = "" ]; then
                # AppImage
                PROJECT_DIRECTORY="${APPDIR%/}/${____init_directory%/}/${____init_file}"
        elif [ ! "$SNAP" = "" ]; then
                # Snapcraft
                PROJECT_DIRECTORY="${SNAP%/}/${____init_directory%/}/${____init_file}"
        fi
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native User Rootless Local Directory
        PROJECT_DIRECTORY="${HOME%/}/.local/${____init_directory%/}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Homebrew (Apple Silicon MacOS)
        PROJECT_DIRECTORY="/opt/homebrew/${____init_directory}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Linuxbrew (Homebrew on Linux)
        PROJECT_DIRECTORY="/home/linuxbrew/.linuxbrew/${____init_directory}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native User Rootless OPT Directory
        PROJECT_DIRECTORY="/opt/${____init_package_name}/${____init_directory%/}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ] &&
[ ! "${____init_macos_bundle_name%/}" = "" ] &&
[ ! "${____init_macos_directory%/}" = "" ]; then
        # MacOS User Rootless Local Application
        PROJECT_DIRECTORY="${HOME}/Applications/${____init_macos_bundle_name%/}/Contents/Resources/${____init_macos_directory%/}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ] &&
[ ! "${____init_macos_bundle_name%/}" = "" ] &&
[ ! "${____init_macos_directory%/}" = "" ]; then
        # MacOS OS Application
        PROJECT_DIRECTORY="/Applications/${____init_macos_bundle_name%/}/Contents/Resources/${____init_macos_directory%/}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native OS Machine-Specific & Homebrew (Intel MacOS)
        PROJECT_DIRECTORY="/usr/local/${____init_directory%/}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native OS Distributor
        PROJECT_DIRECTORY="/usr/${____init_directory%/}/${____init_file}"
fi

if [ ! -f "$PROJECT_DIRECTORY" ]; then
        # Native OS Root
        PROJECT_DIRECTORY="/${____init_directory%/}/${____init_file}"
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
