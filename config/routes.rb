Rails.application.routes.draw do
  get '/pages' => 'pages#index' # Home page CHECK

  get '/projects' => 'projects#index' # Projects index page CHECK
  get '/projects/new' => 'projects#new' # New Project page CHECK
  post '/projects' => 'projects#create' # Success new project created. CHECK
  get '/projects/:id/edit' => 'projects#edit' # Edit a Project CHECK
  patch '/projects/:id' => 'projects#update' # Success update project CHECK
  delete '/projects/:id' => 'projects#destroy' # Delete project CHECK

  post '/color_projects/:id' => 'projects#create'

  get '/signup' => 'users#new' # New users signup page DONE CHECK
  post '/users' => 'users#create' # Success signup DONE CHECK
  get '/users/:id' => 'users#show' # Other user's page
  get '/users/:id/edit' => 'users#edit' # Profile page DONE
  patch '/users/:id' => 'users#update' # Edit profile DONE CHECK

  post '/login' => 'sessions#create' # Success log in DONE CHECK
  get '/logout' => 'sessions#destroy' # Logout DONE

  get '/quizzes' => 'quizzes#index' # What Color Are You cover page
  get '/quizzes/new' => 'quizzes#new' # What Color Are You form page
  post '/quizzes' => 'quizzes#create' # Success color generated. CHECK
  get '/results' => 'quizzes#result' # Quiz form result

  get '/colors' => 'colors#index' # Index of all colors

  get '/cards' => 'cards#index' # Index of cards CHECK
  post '/cards' => 'cards#create' # CHECK
  get '/cards/:id' => 'cards#show' # show of cards CHECK
  get '/cards/:id/edit' => 'cards#edit' # Edit cards page CHECK
  patch '/cards/:id' => 'cards#update' # CHECK
  delete '/cards/:id' => 'cards#destroy' # CHECK

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
