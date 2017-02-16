Rails.application.routes.draw do
  get 'menu' => 'home#index'
  get 'contact_us' => "home#contact_us"

  root "home#index"
end
