# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rails'
require 'capybara/rspec'
require 'shoulda/matchers'
require 'capybara/poltergeist'
require 'factory_girl_rails'
require 'database_cleaner'

Capybara.javascript_driver = :poltergeist
Capybara.default_wait_time = 15

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each {|f| require f }

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.include Caz::Engine.routes.url_helpers
  config.include CommonActions
  config.include FactoryGirl::Syntax::Methods
  config.include JsonResponse, type: :request
end
