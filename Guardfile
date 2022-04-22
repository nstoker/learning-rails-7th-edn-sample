require "active_support/inflector"

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
# zeus_plan: server                    # custom plan in zeus, only works with `zeus: true`.
# zeus: false                          # enables zeus gem.
# CLI: 'rails server'                  # customizes runner command. Omits all options except `pid_file`!
PORT = ENV.fetch('PORT', '3000')
guard 'rails', port: PORT do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end

group :red_green_refactor, halt_on_fail: true do
  # Defines the matching rules for Guard.
  guard :minitest, all_on_start: false do
    watch(%r{^test/(.*)/?(.*)_test\.rb$})
    'foos'.singularize
    watch('test/test_helper.rb') { 'test' }
    watch('config/routes.rb') { interface_tests }
    watch(%r{app/views/layouts/*}) { interface_tests }
    watch(%r{^app/models/(.*?)\.rb$}) do |matches|
      ["test/models/#{matches[1]}_test.rb",
      "test/integration/microposts_interface_test.rb"]
    end
    watch(%r{^test/fixtures/(.*?)\.yml$}) do |matches|
      "test/models/#{matches[1].singularize}_test.rb"
    end
    watch(%r{^app/mailers/(.*?)\.rb$}) do |matches|
      "test/mailers/#{matches[1]}_test.rb"
    end
    watch(%r{^app/views/(.*)_mailer/.*$}) do |matches|
      "test/mailers/#{matches[1]}_mailer_test.rb"
    end
    watch(%r{^app/controllers/(.*?)_controller\.rb$}) do |matches|
      resource_tests(matches[1])
    end
    watch(%r{^app/views/([^/]*?)/.*\.html\.erb$}) do |matches|
      ["test/controllers/#{matches[1]}_controller_test.rb"] +
      integration_tests(matches[1])
    end
    watch(%r{^app/helpers/(.*?)_helper\.rb$}) do |matches|
      integration_tests(matches[1])
    end
    watch('app/views/layouts/application.html.erb') do
      'test/integration/site_layout_test.rb'
    end
    watch('app/helpers/sessions_helper.rb') do
      integration_tests << 'test/helpers/sessions_helper_test.rb'
    end
    watch('app/controllers/sessions_controller.rb') do
      ['test/controllers/sessions_controller_test.rb',
      'test/integration/users_login_test.rb']
    end
    watch('app/controllers/account_activations_controller.rb') do
      'test/integration/users_signup_test.rb'
    end
    watch(%r{app/views/users/*}) do
      resource_tests('users') +
      ['test/integration/microposts_interface_test.rb']
    end
    watch('app/controllers/relationships_controller.rb') do
      ['test/controllers/relationships_controller_test.rb',
      'test/integration/following_test.rb']
    end
  end

  # Returns the integration tests corresponding to the given resource.
  def integration_tests(resource = :all)
    if resource == :all
      Dir["test/integration/*"]
    else
      Dir["test/integration/#{resource}_*.rb"]
    end
  end

  # Returns all tests that hit the interface.
  def interface_tests
    integration_tests << "test/controllers"
  end

  # Returns the controller tests corresponding to the given resource.
  def controller_test(resource)
    "test/controllers/#{resource}_controller_test.rb"
  end

  # Returns all tests for the given resource.
  def resource_tests(resource)
    integration_tests(resource) << controller_test(resource)
  end
end
