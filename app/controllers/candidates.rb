Elections::App.controllers :candidates do

  get :index do
    @candidates = Candidate.all
    render 'index'
  end

  post :index do
    new_candidate = Candidate.create!(first_name: params[:first_name],
                                      last_name: params[:last_name],
                                      party_id: params[:party_id],
                                      constituency_id: params[:constituency_id]) 
    @candidates = Candidate.find_by_id(new_candidate.id)
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
