Rails.application.routes.draw do

  # Startseite => PostsController/list
  get "/", to: "posts#list"

  get "posts/new", to: "posts#new"
  post "posts/create", to: "posts#create"

  get "posts", to: "posts#list"

  get "posts/edit/:id", to: "posts#edit", as: "posts_edit"
  put "posts/update", to: "posts#update"

  get "posts/delete/:id", to: "posts#delete", as: "posts_delete"

  get "posts/:id", to: "posts#read", as: "posts_read"

end