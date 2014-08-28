# vi: set ft=gdb:
set confirm off
set verbose off
set logging off
set pagination on
set print array on
set print symbol-filename on
set print vtbl on
set print pretty on
set step-mode on
set auto-load python-scripts on
set auto-load gdb-scripts on
set auto-load safe-path ~/Development/Projects

# Import our Python scripts for use.
python
import sys
sys.path.insert(0, "/home/jacky/.gdb/python")

# Load pretty printers for Qt4.
from printers import register_extra_printers
register_extra_printers()

# Backtrace helpers
from backtrace import register_backtrace
register_backtrace()
end

source ~/.gdb/aliases.gdb
