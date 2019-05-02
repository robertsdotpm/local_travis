rvm install 2.4.0
rvm use 2.4.0
gem update --system 
gem install bundler
bundle update --bundler

cd /home/travis/builds
git clone https://github.com/travis-ci/travis-build.git
cd travis-build
gem install travis
yes Y | travis version
ln -s `pwd` ~/.travis/travis-build


bundle install
bundler add travis
bundler binstubs travis
