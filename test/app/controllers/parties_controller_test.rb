require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/parties" do
  before do
    get "/parties"
  end

  it "should return a list of parties" do
    assert_match /Party List/, last_response.body
  end
end
