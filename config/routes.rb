Rails.application.routes.draw do
  root 'flashcards#index'
  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout
  get 'signup' => 'users#new', :as => :signup

  resources :cards, except: :show
  resources :users
  resources :user_sessions

  resources :decks do
    member do
      put 'set_current'
    end
  end

  resources :cards do
    member do
      post 'check_original_text_card'
    end
  end
end
