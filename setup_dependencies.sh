rvm install 2.4.0
rvm use 2.4.0
gem install bundler:1.16.6
gem install rake -v 12.3.1

cd /home/travis/builds
git clone https://github.com/travis-ci/travis-build.git
cd travis-build
gem install travis
yes Y | travis version
ln -s `pwd` ~/.travis/travis-build


bundle install
bundler add travis
bundler binstubs travis
