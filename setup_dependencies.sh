export PATH="$PATH:/home/travis/.rvm/bin"

rvm install 2.5.3
rvm use 2.5.3
gem i bundler -v 1.17.3
gem install rake -v 12.3.2

cd /home/travis/builds
git clone https://github.com/travis-ci/travis-build.git
cd travis-build
mkdir -p ~/.travis
ln -s $PWD ~/.travis/travis-build

cd ~/.travis/travis-build
rm Gemfile.lock
bundle i
bundler binstubs travis

yes Y | travis version
cd ~/.travis/travis-build
bundle install

cd /home/docker/build*
echo y yes | travis compile > /home/travis/ci.sh; chmod +x /home/travis/ci.sh; /home/travis/ci.sh


