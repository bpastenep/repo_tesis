Rails.application.routes.draw do
  resources :rdas
#  resources :pregunta
  resources :programas
  resources :propositos
  resources :rda_generals
 

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
