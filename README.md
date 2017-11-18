tarunsk's dot files
====================

This repository contains the essential configuration files from my machine.

## Key Files
[.always_forget.txt](.always_forget.txt) is a file prepared by [Professor DeOrio](https://github.com/awdeorio) and is a cheat sheet with several commonly used UNIX commands.


[.vimrc](.vimrc) contains my current Vim configuration (uses Vundle as a package manager)

## Installation
```
git clone git@github.com:tarunsk/dotfiles.git
rsync -av dotfiles/ ~/
rm -rf dotfiles/
```

#### NOTE:
I currently use zsh, so the bash files in this repository are not updated and are very bare
