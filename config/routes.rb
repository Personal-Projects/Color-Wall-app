Rails.application.routes.draw do
  get '/pages' => 'pages#index' # Home page

  get '/wall' => 'wall#index' # My Wall page
  get '/wall/new' => 'wall#new' # New Project page
  post '/wall' => 'wall#create' # Success new project created.
  get '/wall/:id' => 'wall#show' # My Projects page
  get '/wall/:id/edit' => 'wall#edit' # Edit a Project
  patch '/wall/:id' => 'wall#update' # Success update project
  delete '/wall/:id' => 'wall#destroy' # Delete project

  get '/users' => 'users#index' # My Profile
  get '/users/new' => 'users#new' # New users sign up page
  post '/users' => 'users#create' # Success sign up
  # get '/users/:id' => 'users#show' # Other's profile (save for later)
  get '/users/:id/edit' => 'users#edit' # Other's profile
  patch '/users/:id' => 'users#update' # Edit profile
  get '/users/:id' => 'users#destroy' # Delete profile

  get '/sessions/new' => 'sessions#new' # Login page
  get '/sessions' => 'sessions#create' # Success log in
  delete '/sessions/:id' => 'sessions#destroy' # Logout

  get '/quiz' => 'quiz#index' # What Color Are You cover page
  get '/quiz/new' => 'quiz#new' # What Color Are You form page
  post '/quiz' => 'quiz#create' # Success color generated.

  get '/match' => 'match#index' # Color Match Your Projects cover page
  get '/match/new' => 'match#new' # Color Match Your Projects form page
  get '/match' => 'match#create' # Success card generated.

  get '/color' => 'color#index' # Index of all colors
  get '/color/:id' => 'color#show' # Show a single color

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
