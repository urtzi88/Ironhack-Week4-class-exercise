Rails.application.routes.draw do

  get '/' => 'site#home', as: :root
  get '/contact' => 'site#contact'
  get '/say_name/:name' => 'site#say_name'
  get '/calculator' => 'site#calculator'
  post '/calculate' => 'site#calculate'

  get '/projects' => 'projects#index'
  get '/projects/new' => 'projects#new'
  post '/projects' => 'projects#create'
  get '/projects/:id' => 'projects#show'

  get '/projects/:project_id/time_entries' => 'time_entries#index', as: :time_entries
  get '/projects/:project_id/time_entries/new' => 'time_entries#new'
  post '/projects/:project_id/time_entries/create' => 'time_entries#create', as: :project_time_entries

end
