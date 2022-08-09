#!/usr/bin/bash

function linux () {
  sudo apt update
  sudo apt -y install apt-transport-https curl gnupg stow
  # Install fast node manager
  curl -fsSL https://fnm.vercel.app/install | bash
}

function darwin () {
  brew install stow
}

function win () {
  echo "Not implemented"
}

case "$(uname -s)" in

   Darwin)
     echo 'Mac OS X'
     darwin
     ;;

   Linux)
     echo 'Linux'
     darwin 
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
