Rails.application.routes.draw do


  devise_for :users, controllers: { sessions: 'users/sessions',
                                    registrations: 'users/registrations',
                                    passwords: 'users/passwords',
                                    confirmations: 'users/confirmations'
                                  }
  resources :users

  devise_scope :user do
    root to: "users/sessions#new"
  end
end
