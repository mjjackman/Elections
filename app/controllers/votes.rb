Elections::App.controllers :votes do

  layout :layout

  get :index do
    @votes = Vote.all
    @candidates = Candidate.includes(:constituency).all
    @parties = Party.all
    render 'index'
  end

  post :index do
    new_vote = Vote.create!(constituency_id: params[:constituency_id], 
                            candidates_id: params[:candidates_id],
                            total_votes: params[:votes])
    render 'index'
  end
end
