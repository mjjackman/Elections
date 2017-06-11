require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Candidate Model" do
  it 'can construct a new instance' do
    @candidate = Candidate.new
    refute_nil @candidate
  end
end
