Rails.application.routes.draw do
  get 'robots', to: 'welcome#robots', defaults: { format: 'txt' }

  root "candidate_battles#new"

  resource :candidate_battles, only: :new
  resource :candidates, only: :update
end
