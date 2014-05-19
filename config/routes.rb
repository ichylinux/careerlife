Careerlife::Application.routes.draw do
  devise_for :users

  resources :careers do
    collection do
      get 'new_career_detail'
    end
  end

  resources :profiles, :only => ['index', 'show', 'edit', 'update']

  root :to => 'top#index'
end
