release: ruby ./model/compile_c_version_if_needed.rb
web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
