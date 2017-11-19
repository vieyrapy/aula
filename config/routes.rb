Rails.application.routes.draw do
  resources :diadelasemanas
  resources :asignaraulas
  resources :aulas
  resources :cursoporcarreras
  resources :facultades
  resources :carreras
  resources :cursos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
