
install_fonts() {
    [ ! -d ~/.fonts ] && mkdir ~/.fonts
    cp *.ttf ~/.fonts 
    fc-cache -vf ~/.fonts
}


# Install requirements
sudo apt-get install -y fontforge fonts-migmix


# Install inconsolata
tmpdir=`mktemp -d '/tmp/rcty.XXXXXX'`

cd $tmpdir
curl -L -O https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Bold.ttf
curl -L -O https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Regular.ttf
install_fonts


# Install Ricty
ghq get https://github.com/yascentur/Ricty.git
cd $(ghq root)/github.com/yascentur/Ricty
./ricty_generator.sh auto
install_fonts
