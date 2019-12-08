Rails.application.routes.draw do
  root 'recordData#index'
  resources :recordData
end

