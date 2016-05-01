Rails.application.routes.draw do
  root 'core#index'

  post 'search' => 'core#search', as: 'search_question'
  post 'search/autocomplete' => 'core#elastic', as: 'autocomplete'

  namespace :admin do
    get '' => 'panel#index', as: 'panel'
    get 'search/detail/:title' => 'panel#search_detail', as: 'search_detail'
  end
end
