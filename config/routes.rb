Rails.application.routes.draw do
  devise_for :users

  root to: "calendar#index"

  resources :events do
      resources :tasks
    end
    
  get 'calendar' => 'calendar#index'
end
