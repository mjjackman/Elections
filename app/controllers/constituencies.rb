
Elections::App.controllers :constituencies do

  layout :layout
  
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
end
