Rails.application.routes.draw do
  
  root 'demo#index'
  
  get "demo/index"
  #get 'demo/hello' # any request coming in as demo/hello would be routed to the demo controller and the hello action

  get 'demo/about'
  get 'demo/contact'
  

  
  # # default route
  get ':controller(/:action(/:id))'

end
