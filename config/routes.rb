Competitiveanalysishq::Application.routes.draw do
  root :to => 'pages#home'
  post '/submit_email', to: 'pages#submit_email'
end
