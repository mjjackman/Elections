require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')
require 'database_cleaner'
require 'pry'
  
DatabaseCleaner.strategy = :truncation

describe "/candidates" do
  before do
    get "/candidates"
  end

  it "should return a list of candidates" do
    assert_match /Candidate List/, last_response.body
  end
end
