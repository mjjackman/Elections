require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Vote Model" do
  it 'can construct a new instance' do
    @vote = Vote.new
    refute_nil @vote
  end
end
