
Elections::App.controllers :constituencies do

  # get "/constituencies" do
  #   "Hello World"
  # end
  

  get "/" do
    @constituencies = Constituency.all
    render 'index'
  end

  get "/:id" do
    @constituencies = Constituency.find(params[:id])
    render 'show'
  end

  post '/' do
    @constituencies = Constituency.new(name: params[:name], population: params[:population])
    render 'show'
  end

  
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  

end
