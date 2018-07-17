Rails.application.routes.draw do
  root 'home#index'
  
  resources :projects do
      member do
        post '/comments' => 'projects#create_comment'
      end
      collection do
        delete '/comments/:projectComment_id' => 'projects#destroy_comment'
        patch  '/comments/:projectComment_id' => 'projects#update_comment'
        post '/search' => 'projects#search_skills'
        post '/find_skill' => 'projects#find_skill'
      end
  end
  
  post '/uploads' => 'projects#upload_image'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
