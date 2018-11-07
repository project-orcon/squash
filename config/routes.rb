Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  
             scope module: 'owner', path: 'owner' do 
              resources :clubs 
              resources :courts
              resources :availabilities
              resources :prices
              resources :bookings, only: [:index]
              resources :payments, only: [:index]
              end


end
