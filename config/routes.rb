Careerlife::Application.routes.draw do
  resources :careers
  root 'welcome#index'
end
