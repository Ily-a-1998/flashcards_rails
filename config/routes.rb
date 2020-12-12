Rails.application.routes.draw do
  root 'flashcards#index'

  resources :cards, except: :show
end
