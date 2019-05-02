rvm install 2.3.0
rvm use 2.3.0
cd /home/travis/builds
git clone https://github.com/travis-ci/travis-build.git
cd travis-build
gem install travis
yes Y | travis version
ln -s `pwd` ~/.travis/travis-build
bundle install
gem update --system 
gem install bundler:1.16.6
bundler add travis
gem update --system 
bundler binstubs travis
gem update --system
