# https://github.com/rbenv/rbenv

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
~/.rbenv/bin/rbenv init


# ruby-build addon
# https://github.com/rbenv/ruby-build#readme
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build


# ruby
rbenv install 2.2.0
