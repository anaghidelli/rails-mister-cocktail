Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do # , only: [:create, :index, :destroy]
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy, :edit, :update]
  # delete '/doses/:id', to: 'doses#destroy'
end
