Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'interviewers#index'

  resources :interviewers, only: [:index, :show] do
    member do
      get 'schedule'
    end
  end
end
