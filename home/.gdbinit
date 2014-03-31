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

from printers import register_extra_printers
register_extra_printers()
end

# Loads methods.
source ~/.gdb/modules.gdb
#source ~/.gdb/super.gdb
