# vim: set ft=gdb tw=78 fdm=indent

## Some aliases
define lb
  info breakpoints
end
document lb
  Syntax: lb
  | Alias for 'info breakpoints'.
  | List all breakpoints that are currently being used.
end

define thread
  info threads
end
document thread
  Syntax: thread
  | Prints all of the threads currenly available in the current target.
end

define argv
  show args
end
document argv
  Syntax: argv
  | Prints the arguments that were (or will be) passed to the target.
end

define stack
  if $argc == 0
    info stack
  end
  if $argc == 1
    info stack $arg0
  end
  if $argc > 1
    help stack
  end
end
document stack
  Syntax: stack <COUNT>
    | Print backtrace of the call stack, or innermost COUNT frames.
end

define frame
  info frame
  info args
  info locals
end
document frame
  Syntax: frame
    | Print stack frame, argument variables to the current stack and local
    | variables for that stack.
end
