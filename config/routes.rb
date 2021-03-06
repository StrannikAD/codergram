Rails.application.routes.draw do
  resources :posts do
    member do
      get 'toggle_follow', to: 'posts#toggle_follow'
    end
  end

  devise_for :users
  devise_for :installs
  root 'pages#feed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
