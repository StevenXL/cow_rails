Rails.application.routes.draw do
  resources :cows do
    collection do
      get 'latest'
    end
  end
end
