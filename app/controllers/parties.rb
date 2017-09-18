Elections::App.controllers :parties do

  layout :layout

  get :index do
    @parties = Party.all
    render 'index'
  end

  post :index do 
    new_party = Party.create!(name: params[:name], leader: params[:leader], colour: params[:colour])
    @parties = Party.find_by_id(new_party.id)
    @parties.save
    render 'show'
  end
end
