Rails.application.routes.draw do
  root to: 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create, :destroy]        #spelling error on only,but blowing up page when i fix
  end
end
