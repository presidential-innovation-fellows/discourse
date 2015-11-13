web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development} --preload
worker: bundle exec sidekiq -e $RAILS_ENV
