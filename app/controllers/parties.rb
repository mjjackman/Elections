Elections::App.controllers :parties do

  get :index do
    @parties = Party.all
    render 'index'
  end

  post :index do 
    new_party = Party.create!(name: params[:name], leader: params[:leader], colour: params[:colour])
    @parties = Party.find_by_id(new_party.id)
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
  
  get :index do

  end

  get :show do

  end

  post :create do

  end

end
