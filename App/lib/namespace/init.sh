#!/bin/sh
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
printf -- "Hello World from %s!\n" "lib/namespace/init.sh"




# validate arguments
printf -- "Arguments 0: |%s|\n" "$0"
printf -- "Arguments 1: |%s|\n" "$1"
printf -- "Arguments 2: |%s|\n" "$2"
printf -- "Arguments 3: |%s|\n" "$3"
printf -- "Arguments 4: |%s|\n" "$4"
printf -- "Arguments 5: |%s|\n" "$5"
printf -- "Arguments @: |%s|\n" "$*"

if [ ! "$*" = "--name Alpha --length 5" ]; then
        1>&2 printf -- "%s" "\
E: Incorrect Argument Parsing. Test Failed.
"
        return 1
fi




# respond exit code
return 0
