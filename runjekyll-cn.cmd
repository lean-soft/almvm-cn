call gem install bundler --no-ri --no-rdoc

ECHO Bundler install (not update!)
call bundle install

ECHO Running Jekyll
call bundle exec jekyll build

