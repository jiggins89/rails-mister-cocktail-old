Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails do
    collection do
      get 'top', to: 'cocktails#top'
    end

    resources :doses, only: %i[new create]
  end

  resources :doses, only: [:destroy]
end
