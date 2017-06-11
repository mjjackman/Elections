
Elections::App.controllers :constituencies do
  
  get :index do
    @constituencies = Constituency.all
    render 'index'
  end

  post :index do
    new_con = Constituency.create!(name: params[:name],
                                   population: params[:population],
                                   party_id: params[:party_id])
    @constituencies = Constituency.find_by_id(new_con.id)
    render 'show'
  end

  get :index, :with => :id do
     @constituencies = Constituency.find(params[:id])
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
