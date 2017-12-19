Rails.application.routes.draw do
  resources :pregunta
  resources :planificacions
  resources :programas
  resources :resultados_de_aprendizajes
  get '/programas/new_unity', to: 'programas#new_unity'
  post '/programas/new_unity', to: 'programas#new_unity' 
  get '/programas/create_unity', to: 'programas#create_unity'
  post '/programas/create_unity', to: 'programas#create_unity' 
  get '/programas/index', to: 'programas#index', as: 'programas_path'
  get '/pregunta/index', to: 'pregunta#index', as: 'pregunta_path'
  get '/resultados_de_aprendizajes/index', to: 'resultados_de_aprendizajes#index', as: 'rda_path'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
