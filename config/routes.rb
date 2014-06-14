Rails.application.routes.draw do
  root to: 'people#index'

  resources :people do
    resources :appointments
    post '/appointments/:id', to:'appointments#create_a_recurring_appointment', as: :create_a_recurring_appointment
  end


end
