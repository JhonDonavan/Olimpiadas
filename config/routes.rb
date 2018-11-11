Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
      #Rotas Home
      resources :application

      #Rotas dos models
      resources :competicao
      resources :atleta
      resources :score
  	end
  end
end