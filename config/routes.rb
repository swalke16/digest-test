Rails.application.routes.draw do
  resources :articles
  resources :users do
    resources :articles, controller: 'articles_controllers/user_articles'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
