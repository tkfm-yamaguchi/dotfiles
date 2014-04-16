
DotFiles = %w[
  .gitconfig
  .pryrc
  .tigrc
  .tmux.conf
]

desc "bootstrap the dotfiles to $HOME"
task :bootstrap do
  cd ENV["HOME"] do
    DotFiles.each do |dotfile|
      unless File.exist?(dotfile)
        ln_s File.join(__dir__, dotfile), dotfile
      end
    end
  end
end

desc "remove the dotfiles from $HOME"
task :clean do
  cd ENV["HOME"] do
    DotFiles.each do |dotfile|
      rm_f dotfile
    end
  end
end

