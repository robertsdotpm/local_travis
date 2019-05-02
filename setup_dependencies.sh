rvm install 2.3.0
rvm use 2.3.0


cd /home/travis/builds
git clone https://github.com/travis-ci/travis-build.git
cd travis-build
gem install travis
yes Y | travis version
ln -s `pwd` /home/travis/.travis/travis-build

gem install bundler:1.16.6
gem install rake -v 12.3.1
yes Y | travis version
ln -s `pwd` /home/travis/.travis/travis-build
export PATH="$PATH:/home/travis/.rvm/bin"
bundle install

# Move rune stones again.
gem install rake -v 12.3.1
chmod +x /home/travis/.travis/travis.sh
/home/travis/.travis/travis.sh
