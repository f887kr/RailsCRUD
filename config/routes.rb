Rails.application.routes.draw do

  get 'home/index'
  get 'home/create'
  get 'home/destroy/:id' => 'home#destroy'
  get 'home/read/:id' => 'home#read'
  get 'home/update/:id' => 'home#update'
  get 'home/real_update/:id' => 'home#real_update'

  get 'home/read/:post_id/comment_create' => 'home#comment_create'
  get 'home/read/:id/comment_destroy' => 'home#comment_destroy'
  get 'home/:post_id/reply_create' => 'home#reply_create'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
