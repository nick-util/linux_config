# https://github.com/rbenv/rbenv

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
~/.rbenv/bin/rbenv init
echo "eval "$(rbenv init -)" >> ~/.bashrc
exec $SHELL

# ruby-build addon
# https://github.com/rbenv/ruby-build#readme
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build


# ruby
rbenv install 2.2.0
