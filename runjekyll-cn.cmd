REM Need to be in Reposistory

call gem install bundler --no-ri --no-rdoc

ECHO Bundler install (not update!)
call bundle install

cd %DEPLOYMENT_SOURCE%
cd

ECHO Running Jekyll
call bundle exec jekyll build --incremental

REM KuduSync is after this!