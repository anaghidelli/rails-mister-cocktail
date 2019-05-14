Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do # , only: [:create, :index, :destroy]
    resources :doses, only: [:new, :create]
  end
  delete '/doses/:id', to: 'doses#destroy'
end
