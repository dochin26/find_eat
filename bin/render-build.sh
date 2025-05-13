set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
# bundle exec rake db:prepare

DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:drop:_unsafe
DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:migrate:reset
bundle exec rails db:seed
