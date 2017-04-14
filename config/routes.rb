Rails.application.routes.draw do
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :index, :show, :edit, :create] do
    resources :doses, only: [:create, :destroy]
  end

end
