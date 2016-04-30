Rails.application.routes.draw do
  root 'core#index'

  post 'search' => 'core#search', as: 'search_question'
  post 'search/autocomplete' => 'core#elastic', as: 'autocomplete'

end
