
require 'yaml'
require 'rbconfig'


CONFIG_FILE = "config.yml"


# utility: loads config.yml
task :load_config do
  unless File.exist?(CONFIG_FILE)
    puts "Please create config.yml with copying config.yml.example"
    exit 1
  end

  @config = YAML.load_file(CONFIG_FILE)
  @dotfiles = @config["common"]

  # platform specifics
  case RbConfig::CONFIG["host_os"]
  when /^darwin/
    @dotfiles += @config["darwin"]
  when /^linux/
    @dotfiles += @config["linux"]
  end
end


desc "bootstrap the dotfiles to $HOME"
task bootstrap: :load_config do
  cd ENV["HOME"] do
    @dotfiles.each do |dotfile|
      unless File.exist?(dotfile)
        directory = File.dirname(dotfile)
        mkdir_p directory unless Dir.exist?(directory)

        ln_s File.join(__dir__, dotfile), dotfile
      end
    end
  end
end

desc "remove the dotfiles from $HOME"
task clean: :load_config do
  cd ENV["HOME"] do
    @dotfiles.each do |dotfile|
      rm_f dotfile
    end
  end
end

desc "link some useful binaries into PATH locations"
task :mklink do
  ln_s "/usr/local/share/git-core/contrib/diff-highlight/diff-highlight", "/usr/local/bin"
end
