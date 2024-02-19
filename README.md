# Holloway's Polygot Scripts
[![Holloway's Polygot Scripts](artworks/logo-1200x630.svg)](https://github.com/hollowaykeanho/PolygotScript)

This is a reference repo serving as a sharing and quality control for my polygot
scripts: **The same script can be operated in both UNIX and WINDOWS OSes**. This
script is generally used various multi-system distributions and fleet control
initialization where maintaining multi-OSes end products can be easily done.




## Why It Matters
Mainly for multi-os decentralized packaging usage:

1. **1 common starting point** - less communication errors; more control over
   the package installation.
2. **Maintainable and documentable** - 1 single start point; 1 set of
   documentation only; 1 easy way to maintain the starting point command.
3. **Simple and modular** - can easily drill down the errors due to
   modularization and use the most basic commands available in both OSes.




## The Products
The products are located in the root repository in various versions:

1. [posix-batch-powershell.sh.ps1.cmd](posix-batch-powershell.sh.ps1.cmd) -
   capable of running in:
   1. POSIX Shell mode; AND
   2. BATCH mode; AND
   3. POWERSHELL mode.

2. [posix-batch.sh.cmd](posix-batch.sh.cmd) - capable of running in:
   1. POSIX Shell mode; AND
   2. BATCH mode; AND

> [!NOTE]
> PowerShell knows how to execute batch script. No auto-correction is
> required.

3. [posix-powershell.sh.cmd](posix-powershell.sh.cmd) - capable of running in:
   1. POSIX Shell mode; AND
   2. POWERSHELL mode.

> [!IMPORTANT]
> When executed in Batch mode, it will auto-correct itself to PowerShell and
> execute it from there.

4. [posix-powershell.sh.ps1](posix-powershell.sh.ps1) - capable of running in:
   1. POSIX Shell mode; AND
   2. POWERSHELL mode.




## File Extensions
While UNIX systems do not demand for file extensions, Windows do have its
complex and heavy requirement for it. As a practice, the file extension shall
always be lead by the UNIX (`.sh*`) and ends with Windows (either `*.cmd` for
Batch initialization or `*.ps1` for PowerShell initialization).

For the highest portability, I recommend keeping the initialization with Batch
mode since its execution can auto-correct to PowerShell mode when available
(Refer [posix-powershell.sh.ps1](posix-powershell.sh.ps1) for how it's done).

Hence, this is the Polygot script's file extension I would recommend:

```
filename.sh.ps1.cmd       # start by Batch
filename.sh.cmd.ps1       # start by PowerShell
filename.sh.cmd
filename.sh.ps1
```




## Maintain Simplicity for Sanity
It is always advisable to keep this script as simple as calling the OS-specific
initializing command rather than develop a
[fat binary](https://en.wikipedia.org/wiki/Fat_binary) like executable script.

In case you don't know, coding all 3 types of scripts and compile into 1
manually can be a cumbersome task as the output file can easily become 3x
larger. Should it be too complex, you should use proper programming languages
like Go or Rust.

Please **DO NOT abuse it. You have been warned!**




## License
This project is licensed under [MIT License](LICENSE.txt).
