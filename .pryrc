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

# Aliases
Pry.config.commands.alias_command 'w', 'whereami'

# Aliases pry-byebug
if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# External library configurations
begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError => err
  warn "[WARN] Failed to load 'awesome_print' :("
  warn err
end

begin
  require 'hirb'

  Hirb.enable
  old_print = Pry.config.print
  Pry.config.print = proc do |output, value|
    Hirb::View.view_or_page_output(value) || old_print.call(output, value)
  end
rescue LoadError => err
  warn "[INFO] Skip loading hirb (#{ err })"
end

if defined?(Rails)
  include Rails.application.routes.url_helpers
end

# vim: ft=ruby
