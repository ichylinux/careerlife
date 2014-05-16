Careerlife::Application.routes.draw do
  resources :careers do
    collection do
      get 'new_career_detail'
    end
  end

  root :to => 'top#index'
end
