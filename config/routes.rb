Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [ :new, :create, :show, :index ] do
    resources :doses, only: [:new, :create]
  end
  delete 'doses/:id', to: 'doses#destroy', as: 'remove'
end
