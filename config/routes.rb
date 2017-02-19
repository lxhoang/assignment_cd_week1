Rails.application.routes.draw do
  

  root "home#index"

  get 'contact_us' => "home#contact_us"
  get 'menu' => "home#menu"

  resources :food_items do
  	resources :orders
  end
  
 
end
