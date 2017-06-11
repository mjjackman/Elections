require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "Elections::App::CandidatesHelper" do
  before do
    @helpers = Class.new
    @helpers.extend Elections::App::CandidatesHelper
  end

  def helpers
    @helpers
  end

  it "should return nil" do
    assert_nil helpers.foo
  end
end
