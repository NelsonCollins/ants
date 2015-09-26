Pilot::Application.routes.draw do

  resources :profiles
  get  '/about' => 'abouts#about'
  get  '/contact' => 'abouts#contact'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
 resources :posts do
  resources :comments
   
end

 root  'posts#index'

end
