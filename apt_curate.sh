# sudo apt-get update


# Note: Should use update on Production servers. dist-upgrade may cause issues
# http://askubuntu.com/questions/194651/why-use-apt-get-upgrade-instead-of-apt-get-dist-upgrade
sudo apt-get update && time sudo apt-get dist-upgrade --force-yes --yes
sudo apt-get autoremove --force-yes --yes

