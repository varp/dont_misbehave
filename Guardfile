# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features)

## Uncomment to clear the screen before every task
# clearing :on

## Guard internally checks for changes in the Guardfile and exits.
## If you want Guard to automatically start up again, run guard in a
## shell loop, e.g.:
##
##  $ while bundle exec guard; do echo "Restarting Guard..."; done
##
## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

# guard 'zeus' do
#   require 'ostruct'

#   rspec = OpenStruct.new
#   rspec.spec_dir = 'spec'
#   rspec.spec = ->(m) { "#{rspec.spec_dir}/#{m}_spec.rb" }
#   rspec.spec_helper = "#{rspec.spec_dir}/spec_helper.rb"

#   # matchers
#   rspec.spec_files = /^#{rspec.spec_dir}\/.+_spec\.rb$/

#   # Ruby apps
#   ruby = OpenStruct.new
#   ruby.lib_files = /^(lib\/.+)\.rb$/

#   watch(rspec.spec_files)
#   watch(rspec.spec_helper) { rspec.spec_dir }
#   watch(ruby.lib_files) { |m| rspec.spec.call(m[1]) }

#   # Rails example
#   rails = OpenStruct.new
#   rails.app_files = /^app\/(.+)\.rb$/
#   rails.views_n_layouts = /^app\/(.+(?:\.erb|\.haml|\.slim))$/
#   rails.controllers = %r{^app/controllers/(.+)_controller\.rb$}

#   watch(rails.app_files) { |m| rspec.spec.call(m[1]) }
#   watch(rails.views_n_layouts) { |m| rspec.spec.call(m[1]) }
#   watch(rails.controllers) do |m|
#     [
#       rspec.spec.call("routing/#{m[1]}_routing"),
#       rspec.spec.call("controllers/#{m[1]}_controller"),
#       rspec.spec.call("acceptance/#{m[1]}")
#     ]
#   end

#   # TestUnit
#   # watch(%r|^test/(.*)_test\.rb$|)
#   # watch(%r|^lib/(.*)([^/]+)\.rb$|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
#   # watch(%r|^test/test_helper\.rb$|)    { "test" }
#   # watch(%r|^app/controllers/(.*)\.rb$|) { |m| "test/functional/#{m[1]}_test.rb" }
#   # watch(%r|^app/models/(.*)\.rb$|)      { |m| "test/unit/#{m[1]}_test.rb" }
# end

# Guard-Rails supports a lot options with default values:
# daemon: false                        # runs the server as a daemon.
# debugger: false                      # enable ruby-debug gem.
# environment: 'development'           # changes server environment.
# force_run: false                     # kills any process that's holding the listen port before attempting to (re)start Rails.
# pid_file: 'tmp/pids/[RAILS_ENV].pid' # specify your pid_file.
# host: 'localhost'                    # server hostname.
# port: 3000                           # server port number.
# root: '/spec/dummy'                  # Rails' root path.
# server: thin                         # webserver engine.
# start_on_start: true                 # will start the server when starting Guard.
# timeout: 30                          # waits untill restarting the Rails server, in seconds.
#zeus_plan: server                    # custom plan in zeus, only works with `zeus: true`.
                         # enables zeus gem.
# CLI: 'rails server'                  # customizes runner command. Omits all options except `pid_file`!

guard 'rails', zeus: true do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end
