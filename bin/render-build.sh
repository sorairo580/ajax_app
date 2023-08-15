#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate     # [Ctrl + /]でコメントアウト（複数行は[Shift+Alt+a]）
