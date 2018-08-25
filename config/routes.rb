Rails.application.routes.draw do
  get 'sessions/index'
  post 'sessions/index'

  get 'sessions/logout'

  resources :users
  
  # get 'users/index'

  # get 'users/new'

  # get 'users/edit'

  get 'test/show'

  # get 'inquiry/sendmail'

  get 'mail_controller/send'

  get 'inquiry/show'

  get 'inquiry/confirm'

  get 'hospital/Inquiry'

  get 'hospital/show'

  get 'hospital/index'

  get 'hospital/update'

  post 'inquiry/confirm' , controller: 'inquiry', action: 'confirm'

  post 'inquiry/sendmail', controller:'inquiry', action: 'sendmail'

  # post 'MailControllerController/send', controller:'MailControllerController', action:'send'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
