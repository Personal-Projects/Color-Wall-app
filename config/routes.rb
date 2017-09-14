Rails.application.routes.draw do
  get '/pages' => 'pages#index' # Home page

  get '/walls' => 'walls#index' # My Walls page
  get '/walls/new' => 'walls#new' # New Project page
  post '/walls' => 'walls#create' # Success new project created.
  get '/walls/:id' => 'walls#show' # My Projects page
  get '/walls/:id/edit' => 'walls#edit' # Edit a Project
  patch '/walls/:id' => 'walls#update' # Success update project
  delete '/walls/:id' => 'walls#destroy' # Delete project

  get '/users' => 'users#index' # My Profile
  get '/signup' => 'users#new' # New users signup page
  post '/users' => 'users#create' # Success signup
  # get '/users/:id' => 'users#show' # Other's profile (save for later)
  get '/users/:id/edit' => 'users#edit' # Other's profile
  patch '/users/:id' => 'users#update' # Edit profile
  get '/users/:id' => 'users#destroy' # Delete profile

  get '/login' => 'sessions#new' # Login page
  post '/login' => 'sessions#create' # Success log in
  get '/logout' => 'sessions#destroy' # Logout

  get '/quizzes' => 'quizzes#index' # What Color Are You cover page
  get '/quizzes/new' => 'quizzes#new' # What Color Are You form page
  post '/quizzes' => 'quizzes#create' # Success color generated.

  get '/matches' => 'matches#index' # Color Matches Your Projects cover page
  get '/matches/new' => 'matches#new' # Color Matches Your Projects form page
  get '/matches' => 'matches#create' # Success card generated.

  get '/colors' => 'colors#index' # Index of all colors
  get '/colors/:id' => 'colors#show' # Show a single color
  get '/cards/:id' => 'cards#show' # Show a single card

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
