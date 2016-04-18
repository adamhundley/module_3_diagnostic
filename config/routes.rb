Rails.application.routes.draw do
  get 'search/index'

  get 'search/show'

  root 'welcome#index'
  get '/search', to: "search#index"
end
