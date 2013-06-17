pwd=$1
jdk=$2
apt-get update
apt-get install -y java-package
su -c "
cd $pwd
cd tmp
yes | make-jpkg --changes ../$jdk
" - nobody
