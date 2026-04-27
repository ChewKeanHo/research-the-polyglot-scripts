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
