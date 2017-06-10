require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')
require 'database_cleaner'
require 'pry'
  
DatabaseCleaner.strategy = :truncation
# DatabaseCleaner.start

describe "/constituencies" do
  before do
    DatabaseCleaner.clean
    get "/constituencies"
  end

  it "should return list of constituencies" do
    assert_match /Constituency List/, last_response.body
  end
end

describe "Return a constituency" do
  before do
    DatabaseCleaner.clean
    @constituency = Constituency.create(name: "Cambridge", population: 800_000)
  end
    it "returns a constituency" do
      get '/constituencies/1'
      assert_match /Cambridge/, last_response.body
    end
end

describe "Create constituency" do
  # before do
  #   post '/constituencies', name: "Bath", population: 1000_000
  # end
  DatabaseCleaner.clean
  it "creates a new constituency" do
    post '/constituencies', name: "Bath", population: 1000_000
    # binding.pry 
    assert_match /Bath/, last_response.body
  end
end

