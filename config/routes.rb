Rails.application.routes.draw do
  #get 'headlines/fetch_headlines'
  #get 'headlines', to: 'headlines#fetch_headlines'

  #get 'main/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   #root "headlines#fetch_headlines"
   root "main#index"
   #get 'headlines/index'

end  

#tidy -f errors.txt -o output.html input.html
