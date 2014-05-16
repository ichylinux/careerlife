Careerlife::Application.routes.draw do
  resources :careers

  root :to => 'top#index'
end
