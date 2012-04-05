require 'rubygems'
require 'rspec'
require 'action_view'
require 'action_controller'
require 'deface'

RSpec.configure do |config|
  config.mock_framework = :rspec
end

shared_context "mock Rails" do
  before(:each) do
    unless defined? Rails
      Rails = mock 'Rails'
    end
    Rails.stub :application => mock('application')
    Rails.application.stub :config => mock('config')
    Rails.application.config.stub :cache_classes => true
    Rails.application.config.stub :deface => ActiveSupport::OrderedOptions.new
    Rails.application.config.deface.enabled = true
  end
end

shared_context "mock Rails.application" do
  include_context "mock Rails"

  before(:each) do
    Rails.application.config.stub :deface => Deface::Environment.new
  end
end
