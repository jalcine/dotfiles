# Source: https://github.com/ryanb/dotfiles/blob/a4b3153345759e55b324986b485b0b1e8ae3cf30/irbrc
#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

class Object
  # list methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  # print documentation
  #
  #   ri 'Array#pop'
  #   Array.ri
  #   Array.ri :pop
  #   arr.ri :pop
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ 
      # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    system 'ri', method.to_s
  end
end

begin
  require 'pry'
rescue LoadError
  puts "WARN: couldn't load pry. `gem install pry`"
else
  begin
    require 'pry-debugger'
  rescue LoadError
    puts "WARN: couldn't load pry-debugger. `gem install pry-debugger`"
  end
  Pry.start
  exit
end
