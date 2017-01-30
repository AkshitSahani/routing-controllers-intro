Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/welcome' => 'pages#welcome'

# get '/' => 'pages#welcome' #another way to write the root route
root 'pages#welcome'

get '/about' => 'pages#about'

get '/contest' => 'pages#contest'

get '/kitten/:size' => 'pages#kitten', as: 'kitten'

get 'kittens/:size' => 'pages#kittens', as: 'kittens'

get 'secrets/:magic_word' => 'pages#secrets', as: 'magic'

end
