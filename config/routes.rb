Rails.application.routes.draw do
  get '/' => 'pages#index'
  get '/pages' => 'pages#index'

  get '/projects' => 'projects#index'
  get '/projects/new' => 'projects#new'
  post '/projects' => 'projects#create'
  get '/projects/:id' => 'projects#show'
  get '/projects/:id/edit' => 'projects#edit'
  patch '/projects/:id' => 'projects#update'
  delete '/projects/:id' => 'projects#destroy'

  post '/project_cards' => 'project_cards#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/quizzes' => 'quizzes#index'
  get '/quizzes/new' => 'quizzes#new'
  post '/quizzes' => 'quizzes#create'
  get '/results' => 'quizzes#result'

  get '/colors' => 'colors#index'

  get '/cards' => 'cards#index'
  post '/cards' => 'cards#create'
  get '/cards/:id' => 'cards#show'
  get '/cards/:id/edit' => 'cards#edit'
  patch '/cards/:id' => 'cards#update'
  delete '/cards/:id' => 'cards#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
