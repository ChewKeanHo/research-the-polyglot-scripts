#!/bin/sh
# LICENSE NOTICE HERE




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
