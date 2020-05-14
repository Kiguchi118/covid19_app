Rails.application.routes.draw do

  root 'dashboards#index'
  resources :dashboards, only:[:index]
  resources :subjects, only:[:new,:create]
  resources :pcr_inspections, only:[:new,:create]

end
