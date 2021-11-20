Rails.application.routes.draw do
  root 'products#index'
  get 'products/count', to: 'products#count'
  get 'products/expensivest', to: 'products#expensivest'
  get 'products/cheapest', to: 'products#cheapest'
  get 'products/median', to: 'products#median'
  resources :products do
    delete :delete_all, on: :collection
  end

end
