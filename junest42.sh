#!/bin/sh

set -o errexit

echo '[*] Creating ~/.junest and ~/sgoinfre/junest'
mkdir -p ~/sgoinfre/junest
echo '[*] Linking ~/sgoinfre/junest to ~/.junest'
ln -s ~/sgoinfre/junest ~/.junest
echo '[*] Cloning junest repo'
git clone https://github.com/fsquillace/junest.git ~/.local/share/junest
echo '[*] Adding path variables to ~/.zshrc'
echo '# Junest paths"
export PATH="$PATH:~/.junest/usr/bin_wrappers"
export PATH="$PATH:~/.junest/usr/bin_wrappers"' >> ~/.zshrc
export PATH=~/.local/share/junest/bin:$PATH
export PATH="$PATH:~/.junest/usr/bin_wrappers"
echo '[*] Running junest setup'
junest setup
echo '
[*] Junest installed!
[*] Now you can install any command without worrying about space

Check the documentation at https://github.com/fsquillace/junest
Run junest to get into the Arch shell or use sudoj to run commands inside it
If you want francinette, you can just install it from here and avoid the docker stuff
https://github.com/xicodomingues/francinette'

