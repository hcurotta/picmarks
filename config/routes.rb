PicturesApp::Application.routes.draw do
  
  get "/pictures/edit/:id" => "Pictures#edit"

  get "/pictures/new", :controller => "Pictures", :action => "new"
  
  post "/pictures/new/" => "Pictures#save"
  
  
  get "/pictures/edit/:id" => "Pictures#edit", :as => :edit

  
  get "/pictures/delete/:id" => "Pictures#delete"
  
  get "/pictures" => "Pictures#index"
  
  get "/pictures/:id" => "Pictures#show"
  put "/pictures/:id" => "Pictures#update", :as => :pictures
  
  
end
