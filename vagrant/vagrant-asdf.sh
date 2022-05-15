git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

# export PATH=/home/vagrant/.asdf/shims:/home/vagrant/.asdf/bin:$PATH
export PATH=/home/vagrant/.asdf/shims:/home/vagrant/.asdf/bin:$PATH

asdf plugin add nodejs && 
    asdf install nodejs 18.1.0 && 
    asdf global nodejs 18.1.0