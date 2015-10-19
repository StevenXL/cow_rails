Rails.application.routes.draw do
  resources :cats

  resources :cows do
    collection do
      get 'latest'
    end
  end
end
