
DotFiles = %w[.gitconfig .tmux.conf]

task :bootstrap do
  cd ENV["HOME"] do
    DotFiles.each do |dotfile|
      ln_s File.join(__dir__, dotfile), dotfile
    end
  end
end

task :clean do
  cd ENV["HOME"] do
    DotFiles.each do |dotfile|
      rm dotfile
    end
  end
end

