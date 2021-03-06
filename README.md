
## Bootstrap

```
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install go
$ echo '
export GOPATH=/Users/yamaguchi/local
export PATH="${PATH}:/Users/yamaguchi/local/bin"
' >> ~/.bashrc
$ go get github.com/motemen/ghq
$ ghq get zeroyonichihachi/dotfiles
$ cd ~/local/src/zeroyonichihachi/dotfiles
$ rake bootstrap
$ ./Brewfile.sh
```


## Hierarchy

```
$HOME/local
  bin/
  src/
  pkg/
  opt/
    golang/
```


## TIP

### `git diff` for png

* Install `exiftool`

[7.2 Customizing Git - Git Attributes](http://git-scm.com/book/ch7-2.html)


### iTerm2's colorschemes

Download the colorschemes from [Iterm2-color-schemes](http://iterm2colorschemes.com/) and import some of them.

My favorites are:

* Argonaut
* Symphonic


### powerline font

```
cp -f /usr/local/Cellar/ricty/*.*.*/share/fonts/Ricty*.ttf ~/Library/Fonts/ 
fc-cache -vf
```


### vimperator

Make sure to init/update the submodule for vimperator-plugins repository.


### htop's privilege issue

It is said while installing htop that:

```
htop-osx requires root privileges to correctly display all running processes.
You can either run the program via `sudo` or set the setuid bit:

  sudo chown root:wheel /usr/local/Cellar/htop-osx/0.8.2.1/bin/htop
  sudo chmod u + s /usr/local/Cellar/htop-osx/0.8.2.1/bin/htop

You should be certain that you trust any software you grant root privileges.
```


### Alcatraz

[Alcatraz | The Package manager for Xcode](http://alcatraz.io/)


```
curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh
```

My favorite plugins:

* FuzzyAutocomplete
* XVim


## Setup for OSX

* Clone and setup: vim conf
* Clone and setup: zsh conf
* xcode
* xcode License (`sudo xcodebuild -license`)
* install 'xCode command tools' (`xcode-select --install`)
* [homebrew](http://brew.sh) (`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`)
* Brewfile
* [MacVim-Kaoriya](https://github.com/splhack/macvim/tags)


### rbenv

To use Homebrew's directories rather than ~/.rbenv add to your profile:

```
export RBENV_ROOT=/usr/local/var/rbenv
```

To enable shims and autocompletion add to your profile:

```
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
```

### Karabiner

```
/Applications/Karabiner.app/Contents/Library/bin/karabiner export > karabiner.sh
```


## TODO

* Use Makefile instead of Rakefile

