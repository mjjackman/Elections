require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "Elections::App::ConstituenciesHelper" do
  before do
    @helpers = Class.new
    @helpers.extend Elections::App::ConstituenciesHelper
  end

  def helpers
    @helpers
  end

  it "should return nil" do
    assert_nil helpers.foo
  end
end
