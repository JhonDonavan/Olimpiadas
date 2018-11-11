Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
      resources :competicao
      resources :atleta
      resources :score
  	end
  end
end