Elections::App.controllers :candidates do

  layout :layout

  get :index do
    @candidates = Candidate.all
    @constituencies = Constituency.all
    @parties = Party.all
    @candidate = Candidate.includes(:constituency).all
    render 'index'
  end

  post :index do
    binding.pry
    new_candidate = Candidate.create!(first_name: params[:first_name],
                                      last_name: params[:last_name],
                                      party_id: params[:party_id],
                                      constituency_id: params[:constituency_id], 
                                      total_votes: params[:total_votes]) 
    @candidates = Candidate.find_by_id(new_candidate.id)
    render 'show'
  end

  get :index, :with => :id do
    @candidate = Candidate.find(params[:id])
    render 'show'
  end

  # post :show do
  #   new_vote = Vote.create!(constituency_id: params[:constituency_id], 
  #                           candidates_id: params[:candidates_id],
  #                           total_votes: params[:votes])
  #   render '/index'
  # end
end
