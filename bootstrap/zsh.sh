#!/usr/bin/emv bash

function linux () {
  # install zsh
  sudo apt install -y zsh
}

function ohmyzsh () {
  # install Oh My Zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

case "$(uname -s)" in

   Darwin)
     echo 'Mac OS X'
     ohmyzsh
     ;;

   Linux)
     echo 'Linux'
     linux
     ohmyzsh
     ;;

   CYGWIN*|MINGW32*|MSYS*|MINGW*)
     echo 'MS Windows'
     echo "Not implemented"
     ;;

   # Add here more strings to compare
   # See correspondence table at the bottom of this answer

   *)
     echo 'Other OS' 
     ;;
esac
