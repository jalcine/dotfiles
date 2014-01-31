set confirm off
set verbose off
set trace-commands on
set auto-load python-scripts on
set height 0
set width 0
set logging on
set pagination on

# We like pretty things.
set print pretty 1

# Permit code projects to load their scripts.
set auto-load safe-path ~/Development/Projects

# Lemme see some red.
#set prompt gdb:  

## Some aliases
define bpl
  info breakpoints
end
document bpl
  Syntax: bpl
  | List all breakpoints
end

define thread
  info threads
end

document thread
  Print threads in target
end

define argv
  show args
end
document argv
  Syntax: argv
    | Print program arguments.
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
    | Print backtrace of the call
      stack, or innermost COUNT
      frames.
end

define frame
  info frame
  info args
  info locals
end
document frame
  Syntax: frame
    | Print stack frame.
end

define redirect_stdout
  call rb_eval_string("$_old_stdout, $stdout = $stdout, File.open('/tmp/ruby-debug.' + Process.pid.to_s, 'a'); $stdout.sync = true")
end

define ruby_eval
  call(rb_p(rb_eval_string_protect($arg0,(int*)0)))
end
