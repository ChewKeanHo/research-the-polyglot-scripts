echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM LICENSE CLAUSES HERE
REM ----------------------------------------------------------------------------




REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
where /q powershell
if errorlevel 1 (
        echo "ERROR: missing powershell facility."
        exit /b 1
)

copy /Y "%~nx0" "%~n0.ps1" >nul
timeout /t 1 /nobreak >nul
powershell -executionpolicy remotesigned -Command "& '.\%~n0.ps1' %*"
start /b "" cmd /c del "%~f0" & exit /b %errorcode%
REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
RUN_AS_BATCH
#> | Out-Null




echo \" <<'RUN_AS_POWERSHELL' >/dev/null # " | Out-Null
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
$name = "User"
Write-Host "Hello world from WINDOWS PowerShell, ${name}"
Write-Host "Arguments = $args"
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
exit
<#
RUN_AS_POWERSHELL




################################################################################
# Unix Main Codes                                                              #
################################################################################
name="User"
printf "Hello world from UNIX, %s.\n" "$name"
printf "Arguments = ${*}\n"
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit $?
#>
