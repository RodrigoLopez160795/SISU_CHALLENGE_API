Rails.application.routes.draw do
  get '/servicio/paises', to: 'countries#find_country'
  post '/servicio/estados', to: 'states#find_state'
  post '/servicio/ciudades', to: 'cities#find_cities'
  post '/servicio/guardar', to: 'users#create'
end
