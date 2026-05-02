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
REM execute

REM IMPORTANT NOTICE
REM This sample requires the final file extension to be either .bat or .cmd.
REM The rename into 'libraries.bat' is done via CI. Otherwise, GitHub Actions
REM will stuck forever.

CALL libraries.bat Greet
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
# execute
$____process = . ".\libraries.sh.cmd.ps1"
if ($____process -ne "0") {
        exit 1
}

$____process = Greet
if ($____process -ne "0") {
        exit 1
}
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
# execute
. "./libraries.sh.cmd.ps1"
if [ $? -ne 0 ]; then
        exit 1
fi

Greet
if [ $? -ne 0 ]; then
        exit 1
fi
exit 0
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit 1
#>
