require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Party Model" do
  it 'can construct a new instance' do
    @party = Party.new
    refute_nil @party
  end
end
