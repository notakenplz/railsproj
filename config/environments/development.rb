Blog2::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false
  
  #authentication stuff using devise
  #config.gem "warden", :version => "0.5.1"
  #config.gem "devise", :version => "0.4.1"

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # default URL options (devise)
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  
  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin
end

