Rails.application.routes.draw do
  devise_for :admins
  resources :questions

  devise_scope :admin do
    authenticated :admin do
      root 'questions#index', as: :authenticated_root
      resources :questions
    end

    unauthenticated do
      root 'home#index', as: :unauthenticated_root
      post '/score', to: 'home#create', as: :score
    end
  end
end
