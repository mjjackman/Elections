require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/votes" do
  before do
    get "/votes"
  end

  it "should return hello world text" do
    assert_equal "Hello World", last_response.body
  end
end
