Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    resources :categories, only:[:show]
  end



  get 'regulatious'=> 'static#terms', as: :regulations
  get 'privacy-policy'=> 'static#privacy', as: :privacy_policy
  get 'delivery'=> 'static#shipping', as: :delivery
  get 'about'=> 'static#about', as: :about


  root'products#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
