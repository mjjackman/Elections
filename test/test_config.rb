RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
Dir[File.expand_path(File.dirname(__FILE__) + "/../app/helpers/**/*.rb")].each(&method(:require))

class MiniTest::Spec
  include Rack::Test::Methods
  

  # You can use this method to custom specify a Rack app
  # you want rack-test to invoke:
  #
  #   app Elections::App
  #   app Elections::App.tap { |a| }
  #   app(Elections::App) do
  #     set :foo, :bar
  #   end
  #
  def app(app = nil, &blk)
    @app ||= block_given? ? app.instance_eval(&blk) : app
    @app ||= Padrino.application
  end
end
