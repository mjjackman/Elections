Ÿrequire File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Constituency Model" do
  it 'can construct a new instance' do
    @constituency = Constituency.new
    refute_nil @constituency
  end
end

describe "Constituency" do
  before do
    get '/constituency' 
  end
    it "returns a constituency" do
      refute_nil @constituency
    end
end


