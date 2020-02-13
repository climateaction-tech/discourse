# frozen_string_literal: true

Airbrake.configure do |config|
  config.host = 'https://errhoff.uber.space'
  config.project_id = 3 # required, but any positive integer works
  config.project_key = ENV['ERRBIT_PROJECT_KEY']

  # Uncomment for Rails apps
  config.environment = Rails.env
  config.ignore_environments = %w(development test)

  config.blacklist_keys = [/password/]

  config.performance_stats = false
end
