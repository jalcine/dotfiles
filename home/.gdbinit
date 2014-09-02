# vi: set ft=gdb:
set confirm off
set verbose off
set logging off
set pagination off
set print pretty on
set print array on
set print symbol-filename on
set print vtbl on
set step-mode on

set auto-load python-scripts on
set auto-load gdb-scripts on
set auto-load safe-path ~/Development/Projects

source ~/.gdb/aliases.gdb

# Import our Python scripts for use.
python
import sys
sys.path.insert(0, "/home/jacky/.gdb/python")

import printers

printers.register_extra_printers()
end
