Rails.application.routes.draw do

  resources :people do
    resources :appointments
  end

end
