Rails.application.routes.draw do
  root "home#index"
  
  resources :food_items do
  	resources :orders
  end
  
  get 'contact_us' => "home#contact_us"
  get 'menu' => "home#menu"

 
end
