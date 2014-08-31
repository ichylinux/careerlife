Careerlife::Application.routes.draw do
  resources :careers do
    collection do
      get 'new_career_detail'
    end
  end

  root 'welcome#index'
end
