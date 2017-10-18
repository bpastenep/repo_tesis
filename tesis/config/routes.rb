Rails.application.routes.draw do
  resources :pregunta
  resources :planificacions
  resources :programas
  resources :resultados_de_aprendizajes
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
