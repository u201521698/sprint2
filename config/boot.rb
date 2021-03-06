ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__) 
require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'rails/commands/server'

module Rails
  # Override default development
  # Server port
  class Server
    def default_options
      super.merge(Port: 3000, Host: '0.0.0.0')
    end
  end
end
