Rails.application.routes.draw do
  devise_for :users, :controllers => {:confirmations => 'confirmations'}

  devise_scope :user do
    patch "/confirm" => "confirmations#confirm"
  end

  resources :assets, only: [:destroy]

  resources :sites

  root to: "pages#home"

end
