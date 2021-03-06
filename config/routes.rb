Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  resources :tasks do
    put :sort, on: :collection
    put :timer, on: :collection
    put :change_color, on: :collection
    delete :reset_list, on: :collection, as: 'reset_list'
  end
end
