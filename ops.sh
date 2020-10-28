# git clone https://github.com/restic/restic
# cd restic
echo "test" > ./passwd
./restic -r /var/tmp/restic-one init --password-file ./passwd
strace -s 1024 -f ./restic -r /var/tmp/restic-one backup . --password-file ./passwd --no-cache
rm -rf /var/tmp/restic-one
