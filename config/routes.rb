Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:create, :index]
  end
  post '/questions/:id/upvote', to: 'questions#upvote'
  post '/answers/:id/upvote', to: 'answers#upvote'
end
