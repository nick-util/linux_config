# Note: Should NOT use dist-upgrade on Production servers. dist-upgrade may cause issues
# best for workstations
# http://askubuntu.com/questions/194651/why-use-apt-get-upgrade-instead-of-apt-get-dist-upgrade

# sudo apt-get update
sudo apt-get update && time sudo apt-get dist-upgrade --force-yes --yes
sudo apt-get autoremove --force-yes --yes

