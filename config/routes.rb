Revivestore::Application.routes.draw do
 
  resources :fronts 
  resources :home 
 resources :pages
 root :to => "fronts#show"   
 
 match '/about' => 'pages#about'
 match '/reading_app' => 'pages#reading_app'
 match '/video_reviews' => 'pages#video_reviews'
 match '/authors' => 'pages#authors'
 match '/notices' => 'pages#notices'
 match '/error'  =>'pages#error'
 match '/success' => 'pages#success'


  
  
end
