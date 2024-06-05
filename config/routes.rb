Rails.application.routes.draw do
  devise_for :admins
  resources :questions

  devise_scope :admin do
    authenticated :admin do
      root 'questions#index', as: :authenticated_root
      resources :questions
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
