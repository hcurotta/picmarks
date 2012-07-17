PicturesApp::Application.routes.draw do
  get "/pictures/new", :controller => "Pictures", :action => "new"
  
  post "/pictures/new/" => "Pictures#save"

  get "/pictures/delete/:id" => "Pictures#delete"
  
  get "/pictures" => "Pictures#index"
  
  get "/pictures/:id" => "Pictures#show"
  
end
