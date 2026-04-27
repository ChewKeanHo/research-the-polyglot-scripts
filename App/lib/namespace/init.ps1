# Copyright 2023 The Polyglot Scripts Continuous Research Project Team (https://github.com/ChewKeanHo/research-the-polyglots-script)
#
# The above unified aliases have one or more actual legal entities listed
# outside of this document: (1) 'CREATORS.txt' or 'AUTHORS.txt'; and
# (2) 'CONTRIBUTORS.txt'. They are located usually placed next to this
# document in their respective project repository. Please refer to them for
# compiling the complete list accordingly.
#
#
# Licensed under Creative Common's Attribution-NoDerivatives 4.0 International
# License (the 'License'). You must comply with the license to use the
# content. Get the License at:
#
# https://creativecommons.org/licenses/by-nd/4.0
#
# No warranties are given. The license may not give you all of the permissions
# necessary for your intended use. For example, other rights such as
# publicity, privacy, or moral rights may limit how you use the material.




# validate presence
$null = Write-Host "Hello World from lib/namespace/init.ps1!"




# validate arguments
$____i = 1
foreach ($arg in $Args) {
    $null = Write-Host "Arguments ${____i}: |${arg}|"
    $____i += 1
}
$null = Write-Host "Arguments @: |${Args}|"

if ("${Args}" -ne "-Name Alpha -Length 5") {
        $null = Write-Host @"
E: Incorrect Argument Parsing. Test Failed.
"@
        return 1
}




# respond exit code
return 0
