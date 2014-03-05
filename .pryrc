
require 'rubygems' if RUBY_VERSION < '1.9'

# Pry config
Pry.config.color = true
Pry.config.editor = "vim"
Pry.config.prompt = proc do |obj, level, _|
  prompt = ""
  prompt << "#{Rails.version}@" if defined?(Rails)
  prompt << "#{RUBY_VERSION}"
  "#{prompt} (#{obj})> "
end

# Pry commands
Pry.config.commands.alias_command 'w', 'whereami'


# External library configurations
if defined? AwesomePrint
  begin
    require 'awesome_print'
    Pry.print = proc{|output, value| output.puts value.ai }
  rescue LoadError => err
    warn "Failed to load 'awesome_print'"
    warn err
  end
end

