Rails.application.routes.draw do

  resources :subjects, only:[:new,:create]
  resources :pcr_inspections, only:[:new,:create]

end
