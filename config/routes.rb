Rails.application.routes.draw do

  resources :subjects, only:[:new,:create]

end
