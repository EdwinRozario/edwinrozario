Edwinrozario::Application.routes.draw do
  root :to => 'home#cover'

  resources :home do
    collection do
      get :cover
      get :likes
      get :works
      get :contact
    end
  end

end
