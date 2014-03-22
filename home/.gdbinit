set confirm off
set verbose off
set auto-load python-scripts on
set logging on
set pagination on
set print pretty 1
set auto-load safe-path ~/Development/Projects
set prompt (gdb) 

# Import our Python scripts for use.
python
import sys
sys.path.insert(0, "/home/jacky/.gdb/python")

from printers import register_extra_printers
register_extra_printers()
end

# Loads methods.
source $HOME/.gdb/methods.gdb
