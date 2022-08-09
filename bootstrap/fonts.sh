#!/usr/bin/env 
output_dir=~/Downloads/fonts
fonts=(Go-Mono UbuntuMono)

[ -d ${output_dir} ] || mkdir ${output_dir}

# download fonts
for i in "${fonts[@]}"
do
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/${i} -o ${output_dir}
done

# move fonts to shared font folder
for i in "${output_dir}/${fonts[@]}"; do
  mv * ~/.local/share/fonts/
done

# install fonts
fc-cache -fv
