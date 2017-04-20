Rails.application.routes.draw do
  resources :tipo_evaluacions
  resources :pregunta
  resources :resultados
  resources :objetivo_aprendizajes
  resources :contenidos
  resources :evaluacions
  resources :clases
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
