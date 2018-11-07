Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root  "directors#index" , as: 'home'
resources :directors do
  resources :soaps
end

end
