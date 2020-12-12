Rails.application.routes.draw do
  root 'flashcards#index'

  resources :cards
end
