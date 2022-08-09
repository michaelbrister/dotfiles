#!/usr/bin/env bash

function linux () {
  wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb
  sudo apt install ./nvim-linux64.deb
}

function darwin () {
  brew install neovim
}

function win () {
  winget install Neovim.Neovim
}

case "$(uname -s)" in

   Darwin)
     echo 'Mac OS X'
     darwin
     ;;

   Linux)
     echo 'Linux'
     linux 
     ;;

   CYGWIN*|MINGW32*|MSYS*|MINGW*)
     echo 'MS Windows'
     echo win
     ;;

   # Add here more strings to compare
   # See correspondence table at the bottom of this answer

   *)
     echo 'Other OS' 
     ;;
esac
