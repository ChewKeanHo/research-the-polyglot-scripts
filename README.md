# Holloway's Polygot Command Script
[![Holloway's Polygot Command Script](artworks/logo-1200x630.svg)](https://github.com/hollowaykeanho/PolygotScript)

This is a reference repo serving as a sharing and quality control location for
my polygot command script that can be operated in both UNIX and WINDOWS
environment. This script is generally used for multi-system distributions where
a common initializing point is a lot easier to maintain than multiple
os-oriented shell scripts.




## Why It Matters
Mainly for multi-os decentralized packaging usage:

1. **1 common start point** - less communication errors; more control over the
   package installation.
2. **Maintainable and documentable** - 1 single start point; 1 set of
   documentation only; 1 easy way to maintain the starting point command.
3. **Simple and modular** - can easily drill down the errors due to
   modularization and use the most basic commands available in both OSes.




## The Product
The product is located in the root repository called `script.cmd`.

Due to Windows' complexity and heavy requirement for file extension, the file
**MUST be suffix with the batch script extension: the `.cmd`**. Such phenomenon
is unseen in UNIX environment.

It is always advisable to keep this script as simple as calling the OS-specific
initializing command rather than develop a
[fat binary](https://en.wikipedia.org/wiki/Fat_binary) like executable script.
Example:

```
echo >/dev/null # >nul & GOTO WINDOWS & rem ^




################################################################################
# UNIX Main Codes                                                              #
################################################################################
hugo server --noBuildLock \
        --disableFastRender \
        --port 8080 \
        --gc
################################################################################
# UNIX Main Codes                                                              #
################################################################################
exit $?




:WINDOWS
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
hugo server --noBuildLock ^
        --disableFastRender ^
        --port 8080 ^
        --gc
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
```

In case you don't know, coding either the SHELL script or the BATCH script can
be a cumbersome task when they became large; left alone combining them in 1
file. Use proper programming languages like Go for such task.

**DO NOT abuse it. You have been warned!**




## License
This project is licensed under [MIT License](LICENSE).
