Rails.application.routes.draw do
  root "candidate_battles#new"

  resource :candidate_battles, only: :new
  resource :candidates, only: :update
end
