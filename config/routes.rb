Rails.application.routes.draw do
  root 'core#index'

  post 'search' => 'core#search', as: 'search_question'
  post 'search/autocomplete' => 'core#elastic', as: 'autocomplete'

  namespace :admin do
    get '' => 'panel#index', as: 'admin_panel'
  end
end
